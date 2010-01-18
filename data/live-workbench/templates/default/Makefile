ROOTCMD=sudo
LH=/usr/bin/lh

build: config
	$(ROOTCMD) $(LH) build

clean:
	$(LH) clean

config: clean
	$(LH) config

purge:
	$(LH) clean --purge

