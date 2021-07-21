#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Prepare / Ubuntu
##

mod_ubuntu_prepare () {

	echo 'sudo apt-get install herbstluftwm'
	sudo apt-get install herbstluftwm

}

##
### Tail: Model / Prepare / Ubuntu
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_ubuntu_prepare "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
