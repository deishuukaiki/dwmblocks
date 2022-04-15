PREFIX ?= /usr/local
CC ?= cc
LDFLAGS = -lX11

output: dwmblocks.c blocks.def.h blocks.h
	${CC}  dwmblocks.c $(LDFLAGS) -o dwmblocks
blocks.h:
	cp blocks.def.h $@


clean:
	rm -f *.o *.gch dwmblocks
install: output
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 dwmblocks $(DESTDIR)$(PREFIX)/bin/dwmblocks
	install -m 0755 dwmblocks_battery $(DESTDIR)$(PREFIX)/bin/dwmblocks_battery
	install -m 0755 dwmblocks_volume $(DESTDIR)$(PREFIX)/bin/dwmblocks_volume
	install -m 0755 dwmblocks_net $(DESTDIR)$(PREFIX)/bin/dwmblocks_net
	install -m 0755 dwmblocks_input $(DESTDIR)$(PREFIX)/bin/dwmblocks_input
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks_battery
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks_volume
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks_net
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks_input
