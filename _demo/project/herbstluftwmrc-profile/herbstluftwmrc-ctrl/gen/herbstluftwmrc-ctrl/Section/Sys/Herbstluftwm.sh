

################################################################################
### Head: Sys
##

is_herbstluftwmrc_dir () {

	local dir_path="$1"
	local herbstluftwmrc_file_path="$dir_path/$THE_HERBSTLUFTWMRC_FILE_NAME" ## ~/.config/herbstluftwmrc-profile/demo/herbstluftwm.conf

	if [ ! -f "$herbstluftwmrc_file_path" ]; then ## check ~/.config/herbstluftwmrc-profile/demo/herbstluftwm.conf
		return 1
	fi

	return 0
}

is_not_herbstluftwmrc_dir () {

	local dir_path="$1"
	local herbstluftwmrc_file_path="$dir_path/$THE_HERBSTLUFTWMRC_FILE_NAME" ## ~/.config/herbstluftwmrc-profile/demo/herbstluftwm.conf

	if [ -f "$herbstluftwmrc_file_path" ]; then ## check ~/.config/herbstluftwmrc-profile/demo/herbstluftwm.conf
		return 1
	fi

	return 0

}

herbstluftwmrc_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH/$name"
}


herbstluftwmrc_check_herbstluftwmrc_dir_exists () {

	local herbstluftwmrc_dir_name="$THE_HERBSTLUFTWMRC_DIR_NAME"
	local herbstluftwmrc_dir_path="$THE_HERBSTLUFTWMRC_DIR_PATH"

	if ! [ -a "$herbstluftwmrc_dir_path" ]; then ## file not exists
		return 0
	fi


	if [ -h "$herbstluftwmrc_dir_path" ]; then ## ~/.config/herbstluftwm is symbolic link
		return 0
	fi



	util_error_echo "## Dir is exists:" "$herbstluftwmrc_dir_path"
	util_error_echo

	util_error_echo "## Try to backup:"
	util_error_echo

	local now="$(date +%Y%m%d_%s)"
	local bak_dir_path="${HOME}/.backup/${herbstluftwmrc_dir_name}.bak"
	local bak_target_path="${bak_dir_path}/${herbstluftwmrc_dir_name}.bak.${now}"

	util_error_echo "mkdir -p ${bak_dir_path}"
	mkdir -p "${bak_dir_path}"


	util_error_echo "cp -a ${herbstluftwmrc_dir_path} ${bak_target_path}"
	cp -a "${herbstluftwmrc_dir_path}" "${bak_target_path}"

	if [ "$?" != "0" ]; then
		util_error_echo
		util_error_echo '## Backup Failure!'
		#exit 1
		return 1
	fi

	util_error_echo


	return 0
}


herbstluftwmrc_profile_init_dir () {

	if ! [ -d "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH" ]; then
		##echo "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"
		mkdir -p "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"
	fi

	return 0
}


herbstluftwmrc_repo_clone () {

	## $ herbstluftwmrc-get demo

	local name="$1"
	local repo_url="$2"

	if [ "none$name" == 'none' ]; then
		name='default'
	fi

	util_error_echo "mkdir -p $THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"

	util_error_echo "cd $THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"
	cd "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH" ## cd ~/.local/share/herbstluftwmrc-profile


	if [ -d "$name" ]; then
		util_error_echo
		util_error_echo "## Is Exists:" "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH/$name"
		return 0;
	fi

	util_error_echo "git clone --recursive $repo_url $name "
	git clone --recursive "$repo_url" "$name"  ## git clone --recursive https://github.com/conformal/herbstluftwm.git demo

	## $ man cd
	util_error_echo "cd $OLDPWD"
	cd "$OLDPWD"

}

##
### Tail: Sys
################################################################################
