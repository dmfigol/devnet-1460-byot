# mkisofs is part of cdrtools in MacPorts

ROUTER = R1 R2
ISOS = $(ROUTER:=.iso)
PORTS = ports.cfg

all: $(ISOS)

%.iso: %-config.txt
	cp $< iosxe_config.txt
	mkisofs -l -o $@ iosxe_config.txt
	rm iosxe_config.txt

ports:
	touch $(PORTS)
	@for R in $(ROUTER); do \
	    vagrant port --machine-readable $$R | \
	    grep $$R >>ports.cfg; \
	done

clean:
	rm -f *.iso $(PORTS)
