# ===========================================
# 				Makefile
# 
# Make script for installing break-manager
# to '/usr/local/bin/' directory.
#
# -- author: Felix Brüning
# -- date  : 2022-07-17 
# ===========================================

.PHONY: all install uninstall

# Default install project
all: install

# install-target: install scripts and
# add executable bit
install:
	sudo cp break_manager /usr/local/bin/
	sudo cp break_manager_int /usr/local/bin/
	sudo cp control_break_manager /usr/local/bin/
	sudo chmod +x /usr/local/bin/break_manager
	sudo chmod +x /usr/local/bin/break_manager_int
	sudo chmod +x /usr/local/bin/control_break_manager

# uninstall-target: remove script files
uninstall:
	sudo rm -f /usr/local/bin/break_manager
	sudo rm -f /usr/local/bin/break_manager_int
	sudo rm -f /usr/local/bin/control_break_manager
