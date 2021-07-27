

################################################################################
### Head: Model mod_herbstluftwmrc_profile_list
##



mod_herbstluftwmrc_profile_list () {
	#echo "mod_herbstluftwmrc_profile_list"
	#echo "$@"

	# herbstluftwmrc-ctrl list

	local name=''
	local dir_path=''

	herbstluftwmrc_profile_init_dir

	cd "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"

	## for name in $(ls ./ -1); do
	for name in *; do
		dir_path="$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH/$name" ## ~/.local/share/herbstluftwmrc-profile/demo
		if is_not_herbstluftwmrc_dir "$dir_path"; then ## check ~/.local/share/herbstluftwmrc-profile/demo/herbstluftwm.conf
			continue
		fi

		echo "$name"
	done

	cd "$OLDPWD"

}

##
### Tail: Model mod_herbstluftwmrc_profile_list
################################################################################
