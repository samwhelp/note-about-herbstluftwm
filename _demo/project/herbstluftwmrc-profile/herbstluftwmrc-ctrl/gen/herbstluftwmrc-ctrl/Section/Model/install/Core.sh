

################################################################################
### Head: Model herbstluftwmrc_profile_install
##

herbstluftwmrc_profile_install () {

	## $ bspwmrc-ctrl install demo https://github.com/samwhelp/note-about-herbstluftwm.git

	local name="$1"
	local repo_url="$2"

	util_error_echo
	herbstluftwmrc_repo_clone "$name" "$repo_url"
	util_error_echo

}

##
### Tail: Model herbstluftwmrc_profile_install
################################################################################
