

################################################################################
### Head: Base Function
##

## THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

find_dir_path () {
	if [ ! -d $(dirname -- "$1") ]; then
		dirname -- "$1"
		return 1
	fi
	echo $(cd -P -- "$(dirname -- "$1")" && pwd -P)
}

##THIS_BASE_DIR_PATH=$(find_dir_path $0)

## $ export DEBUG_HLWM=true
is_debug () {
	if [ "$DEBUG_HLWM" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {


	THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/../.")


	THE_BIN_DIR_NAME="bin"
	THE_BIN_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_BIN_DIR_NAME"

	THE_EXT_DIR_NAME="ext"
	THE_EXT_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_EXT_DIR_NAME"

	THE_MAK_DIR_NAME="mak"
	THE_MAK_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_MAK_DIR_NAME"

	THE_SYS_DIR_NAME="sys"
	THE_SYS_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_SYS_DIR_NAME"

	THE_SYS_EXT_DIR_NAME="$THE_EXT_DIR_NAME"
	THE_SYS_EXT_DIR_PATH="$THE_SYS_DIR_PATH/$THE_SYS_EXT_DIR_NAME"

	THE_STYLE_DIR_NAME="style"
	THE_STYLE_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_STYLE_DIR_NAME"


	THE_STYLE_PICOM_CONFIG_FILE_PATH="$THE_STYLE_DIR_PATH/picom/picom.conf"

	THE_STYLE_POLYBAR_CONFIG_FILE_PATH="$THE_STYLE_DIR_PATH/polybar/config"

}


base_var_dump () {

	is_not_debug && return 0

	echo
	echo "################################################################################"
	echo "### Head: var_dump"
	echo "##"
	echo "#"
	echo


	echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"


	echo "THE_BIN_DIR_NAME=$THE_BIN_DIR_NAME"
	echo "THE_BIN_DIR_PATH=$THE_BIN_DIR_PATH"

	echo "THE_EXT_DIR_NAME=$THE_EXT_DIR_NAME"
	echo "THE_EXT_DIR_PATH=$THE_EXT_DIR_PATH"

	echo "THE_MAK_DIR_NAME=$THE_MAK_DIR_NAME"
	echo "THE_MAK_DIR_PATH=$THE_MAK_DIR_PATH"

	echo "THE_SYS_DIR_NAME=$THE_SYS_DIR_NAME"
	echo "THE_SYS_DIR_PATH=$THE_SYS_DIR_PATH"

	echo "THE_SYS_EXT_DIR_NAME=$THE_SYS_EXT_DIR_NAME"
	echo "THE_SYS_EXT_DIR_PATH=$THE_SYS_EXT_DIR_PATH"

	echo "THE_STYLE_DIR_NAME=$THE_STYLE_DIR_NAME"
	echo "THE_STYLE_DIR_PATH=$THE_STYLE_DIR_PATH"


	echo "THE_STYLE_PICOM_CONFIG_FILE_PATH=$THE_STYLE_PICOM_CONFIG_FILE_PATH"

	echo "THE_STYLE_POLYBAR_CONFIG_FILE_PATH=$THE_STYLE_POLYBAR_CONFIG_FILE_PATH"



	echo
	echo "#"
	echo "##"
	echo "### Tail: var_dump"
	echo "################################################################################"
	echo
}

##
### Tail: Base Function
################################################################################
