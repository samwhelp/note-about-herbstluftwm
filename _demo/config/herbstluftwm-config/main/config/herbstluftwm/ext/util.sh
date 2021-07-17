

################################################################################
### Head: Util_Debug
##

util_debug_echo () {
	if is_debug; then
		echo "$@" 1>&2;
	fi
}

##
### Head: Util_Debug
################################################################################


################################################################################
### Head: Util_Command
##

is_function_exist () {
	if type -p "$1" > /dev/null; then
		return 0
	else
		return 1
	fi
}

# is_command_exist () {
# 	if command -v "$1" > /dev/null; then
# 		return 0
# 	else
# 		return 1
# 	fi
# }

is_command_exist () {
	if [ -x "$(command -v $1)" ]; then
		return 0
	else
		return 1
	fi
}

##
### Tail: Util_Command
################################################################################
