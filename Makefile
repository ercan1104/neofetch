PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install (for linux) or haiku or macos\' to install Neofetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p neofetch $(DESTDIR)$(PREFIX)/bin/neofetch
	@cp -p neofetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/neofetch

haiku:
	@mkdir -p /boot/home/config/non-packaged/bin
	@mkdir -p /boot/home/config/non-packaged/share/man/man1
	@cp -p neofetch /boot/home/config/non-packaged/bin/neofetch
	@cp -p neofetch.1 /boot/home/config/non-packaged/share/man/man1
	@chmod 755 /boot/home/config/non-packaged/bin/neofetch

macos:
	@mkdir -p /usr/local/bin
	@mkdir -p /usr/local/share/man/man1
	@cp -p neofetch /usr/local/bin/neofetch
	@cp -p neofetch.1 /usr/local/share/man/man1
	@chmod 755 /usr/local/bin/neofetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/neofetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/neofetch.1*
