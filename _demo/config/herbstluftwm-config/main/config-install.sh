#!/usr/bin/env bash

set -e


################################################################################
### Head: herbstluftwm_config_install
##
herbstluftwm_config_install () {

	echo
	echo "##"
	echo "## Config: herbstluftwm_config_install"
	echo "##"
	echo

	#echo "./config/herbstluftwm/bin/maintain-install.sh"
	#./config/herbstluftwm/bin/maintain-install.sh

	echo "make -C config/herbstluftwm install"
	make -C config/herbstluftwm install

	echo

}
##
### Tail: herbstluftwm_config_install
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	herbstluftwm_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
