

################################################################################
### Head: Model herbstluftwmrc_profile_install
##

herbstluftwmrc_profile_install () {

	## $ herbstluftwmrc-ctrl install demo https://github.com/conformal/herbstluftwm.git

	local name="$1"
	local repo_url="$2"

	util_error_echo "mkdir -p $THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"
	mkdir -p "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"

	util_error_echo "cd $THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH"
	cd "$THE_HERBSTLUFTWMRC_PROFILE_DIR_PATH" ## cd ~/.local/share/herbstluftwmrc-profile


	util_error_echo "git clone --recursive $repo_url $name"
	git clone --recursive "$repo_url" "$name" ## git clone https://github.com/conformal/herbstluftwm.git demo

	cd "$OLDPWD"

}

##
### Tail: Model herbstluftwmrc_profile_install
################################################################################
