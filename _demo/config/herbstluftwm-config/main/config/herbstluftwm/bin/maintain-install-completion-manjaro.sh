#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Install
##

mod_install_completion () {

	mod_install_completion_bash


	mod_install_completion_check
}



mod_install_completion_bash () {

	echo "sudo install -Dm644 $THE_SHARE_DIR_PATH/completion/bash/hlwm-profile-ctrl /usr/local/share/bash-completion/completions/hlwm-profile-ctrl"
	sudo install -Dm644 "$THE_SHARE_DIR_PATH/completion/bash/hlwm-profile-ctrl" "/usr/local/share/bash-completion/completions/hlwm-profile-ctrl"

	echo "sudo install -Dm644 $THE_SHARE_DIR_PATH/completion/bash/hlwm-frame-ctrl /usr/local/share/bash-completion/completions/hlwm-frame-ctrl"
	sudo install -Dm644 "$THE_SHARE_DIR_PATH/completion/bash/hlwm-frame-ctrl" "/usr/local/share/bash-completion/completions/hlwm-frame-ctrl"

	echo "sudo install -Dm644 $THE_SHARE_DIR_PATH/completion/bash/hlwm-window-ctrl /usr/local/share/bash-completion/completions/hlwm-window-ctrl"
	sudo install -Dm644 "$THE_SHARE_DIR_PATH/completion/bash/hlwm-window-ctrl" "/usr/local/share/bash-completion/completions/hlwm-window-ctrl"

	echo "sudo install -Dm644 $THE_SHARE_DIR_PATH/completion/bash/hlwm-wallpaper-ctrl /usr/local/share/bash-completion/completions/hlwm-wallpaper-ctrl"
	sudo install -Dm644 "$THE_SHARE_DIR_PATH/completion/bash/hlwm-wallpaper-ctrl" "/usr/local/share/bash-completion/completions/hlwm-wallpaper-ctrl"

}




mod_install_completion_check () {

	echo
	is_command_exist 'tree' && tree "/usr/local/share/bash-completion/completions"

	echo
}


##
### Tail: Model / Install
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_install_completion "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
