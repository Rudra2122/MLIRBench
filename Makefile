PY ?= python3
TUNE_SHAPES = --shape 128x128x128 --shape 512x512x512 --shape 1024x1024x1024 \
              --shape 128x768x3072 --shape 32x4096x4096 --shape 1x4096x4096

.PHONY: c4-padding all peaks tune ablate sweep schedule counters ir riscv elf report clean mac mac-counters mac-selftest thermal c4-followup
all: peaks tune ablate sweep schedule ir riscv elf report
peaks:    ; $(PY) -m mlirbench peaks
tune:     ; $(PY) -m mlirbench tune $(TUNE_SHAPES)
ablate:   ; $(PY) -m mlirbench ablate
sweep:    ; $(PY) -m mlirbench sweep
schedule: ; $(PY) -m mlirbench schedule
counters: ; $(PY) -m mlirbench counters
ir:       ; $(PY) -m mlirbench ir
riscv:    ; $(PY) -m mlirbench riscv
elf:      ; $(PY) -m mlirbench elf
report:   ; $(PY) -m mlirbench report
thermal:  ; $(PY) -m mlirbench thermal
clean:    ; rm -rf build

# ---- MacBook (Apple Silicon): separate results dir, throttle guard on "wait" ----
MAC_RESULTS ?= $(CURDIR)/results_m3
MAC = MLIRBENCH_RESULTS=$(MAC_RESULTS) $(PY) -m mlirbench
mac:
	$(MAC) peaks
	$(MAC) thermal --recalibrate
	$(MAC) tune $(TUNE_SHAPES) --thermal wait
	$(MAC) ablate --thermal wait
	$(MAC) sweep --thermal wait
	-$(MAC) schedule --thermal wait
	$(MAC) ir
	$(MAC) elf
	$(MAC) report

# kperf needs root; env/PATH are preserved so the same python + IREE tools are used,
# then ownership is handed back so later non-root runs can write the results dir.
mac-selftest:
	sudo -E env "PATH=$$PATH" MLIRBENCH_RESULTS=$(MAC_RESULTS) $(PY) -m mlirbench counters --selftest --counter-backend kperf
	sudo chown -R $$(id -un) $(MAC_RESULTS) build
mac-counters:
	sudo -E env "PATH=$$PATH" MLIRBENCH_RESULTS=$(MAC_RESULTS) $(PY) -m mlirbench counters --counter-backend kperf --thermal wait
	sudo chown -R $$(id -un) $(MAC_RESULTS) build
	$(MAC) report

# ---- Linux host with a PMU (e.g. GCE C4, see README): follow-up counter runs ----
# Reuses results_c4/ (tuned tiles are read from results_c4/autotune/*.json).
C4_RESULTS ?= $(CURDIR)/results_c4
C4 = MLIRBENCH_RESULTS=$(C4_RESULTS) taskset -c 3 $(PY) -m mlirbench
c4-followup:
	$(C4) schedule
	$(C4) counters --schedule
	$(C4) counters --shape 128x768x3072 --shape 32x4096x4096 --shape 1x4096x4096 \
	    --variant vec_heuristic --variant vec_autotuned --variant packed_late
	$(C4) tune --shape 512x512x512 --shape 1024x1024x1024 --counters
	MLIRBENCH_RESULTS=$(C4_RESULTS) $(PY) -m mlirbench report
	tar czf $(HOME)/results_c4.tar.gz -C $(CURDIR) results_c4

# Padded-width experiment (answers: capacity or power-of-two set conflicts?)
c4-padding:
	$(C4) padding
	MLIRBENCH_RESULTS=$(C4_RESULTS) $(PY) -m mlirbench report
	tar czf $(HOME)/results_c4.tar.gz -C $(CURDIR) results_c4
