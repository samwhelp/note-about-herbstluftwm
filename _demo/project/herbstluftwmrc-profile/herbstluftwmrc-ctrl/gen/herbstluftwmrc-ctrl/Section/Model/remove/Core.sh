

################################################################################
### Head: Model mod_herbstluftwmrc_profile_remove
##

mod_herbstluftwmrc_profile_remove () {

	## $ herbstluftwmrc-ctrl remove demo

	local name="$1"
	#echo $name

	herbstluftwmrc_profile_init_dir

	util_error_echo "cd $THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"
	cd "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH" ## cd ~/.local/share/herbstluftwmrc-profile

	local dir_path="./$name"

	if [ ! -d "$dir_path" ]; then ## check ~/.local/share/.herbstluftwmrc-profile/demo
		util_error_echo
		util_error_echo "## Dir not exists: "
		util_error_echo
		util_error_echo "$name"
		util_error_echo
		return 1
	fi

	##mod_herbstluftwmrc_profile_default

	util_error_echo "rm -rf $dir_path"
	rm -rf "$dir_path"

	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Model mod_herbstluftwmrc_profile_remove
################################################################################
