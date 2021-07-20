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
### Head: Model / Install
##

mod_install () {

	mod_install_xsession


	mod_install_check
}



mod_install_xsession () {

	echo "sudo install -Dm644 $THE_SHARE_DIR_PATH/xsession/herbstluftwm-session.desktop /usr/share/xsessions/herbstluftwm-session.desktop"
	sudo install -Dm644 "$THE_SHARE_DIR_PATH/xsession/herbstluftwm-session.desktop" "/usr/share/xsessions/herbstluftwm-session.desktop"


	echo "sudo install -Dm755 $THE_SHARE_DIR_PATH/xsession/herbstluftwm-session.sh /usr/local/bin/herbstluftwm-session.sh"
	sudo install -Dm755 "$THE_SHARE_DIR_PATH/xsession/herbstluftwm-session.sh" "/usr/local/bin/herbstluftwm-session.sh"


}




mod_install_check () {

	echo
	ls /usr/share/xsessions/herbstluftwm-session.desktop -l

	echo
	ls /usr/local/bin/herbstluftwm-session.sh -l

	echo
}


##
### Tail: Model / Install
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_install "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
