PROJ = pmod_7seg4_2

PIN_DEF = icebreaker.pcf
DEVICE = up5k
PACKAGE = sg48

all: $(PROJ).rpt $(PROJ).bin

%.json: %.vhd
	/usr/bin/yosys -p 'ghdl $(PROJ).vhd -e $(PROJ); synth_ice40 -json $@'

%.asc: %.json
	/usr/bin/nextpnr-ice40 --package $(PACKAGE) --$(DEVICE) --asc $@ --pcf $(PIN_DEF) --json $^

%.bin: %.asc
	/usr/bin/icepack $< $@

%.rpt: %.asc
	/usr/bin/icetime -d $(DEVICE) -mtr $@ $<

prog: $(PROJ).bin
	@echo 'Executing prog as root!!!'
	sudo /usr/bin/iceprog $<

clean:
	rm -f $(PROJ).json $(PROJ).asc $(PROJ).rpt $(PROJ).bin

.SECONDARY:
.PHONY: all prog clean
