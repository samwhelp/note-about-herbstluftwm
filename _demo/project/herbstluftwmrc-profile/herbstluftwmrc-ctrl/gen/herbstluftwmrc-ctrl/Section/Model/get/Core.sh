

################################################################################
### Head: Model mod_herbstluftwmrc_profile_get
##

mod_herbstluftwmrc_profile_get () {

	#echo "mod_herbstluftwmrc_profile_get"
	#echo "$@"

	# herbstluftwmrc-ctrl get

	local target_path="$THE_HERBSTLUFTWMRC_DIR_PATH" ## ~/.config/herbstluftwm
	local dir_path="$(LANG=C file "$target_path" | awk -F ' symbolic link to ' '{print $2}')"
	local name="$(basename "$dir_path")"

	echo $name

}

##
### Tail: Model mod_herbstluftwmrc_profile_get
################################################################################
