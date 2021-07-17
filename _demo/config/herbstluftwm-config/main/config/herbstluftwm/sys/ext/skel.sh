

################################################################################
### Head: Skel / Run
##

skel_run () {
	skel_init
	skel_keybind
	skel_theme
	skel_rule
	skel_monitor
	skel_up
}

##
### Tail: Skel / Run
################################################################################


################################################################################
### Head: Skel / Init
##

skel_init () {
	skel_reset
	skel_modkey_init
}

##
### Tail: Skel / Init
################################################################################


################################################################################
### Head: Skel / Init / Func
##

skel_reset () {

	hc emit_hook reload

	xsetroot -solid '#00000000' # '#5A8E3A'

	# remove all existing keybindings
	hc keyunbind --all

}


skel_modkey_init () {
	# keybindings
	# if you have a super key you will be much happier with Mod set to Mod4
	Mod=Mod1    # Use alt as the main modifier
	#Mod=Mod4   # Use the super key as the main modifier
}

##
### Tail: Skel / Init / Func
################################################################################


################################################################################
### Head: Skel / Keybind
##

skel_keybind () {
	hc keybind $Mod-Shift-q quit
	hc keybind $Mod-Shift-r reload
	hc keybind $Mod-Shift-c close
	hc keybind $Mod-Return spawn "${TERMINAL:-sakura}" # use your $TERMINAL with xterm as fallback

	# basic movement in tiling and floating mode
	# focusing clients
	hc keybind $Mod-Left  focus left
	hc keybind $Mod-Down  focus down
	hc keybind $Mod-Up    focus up
	hc keybind $Mod-Right focus right
	hc keybind $Mod-h     focus left
	hc keybind $Mod-j     focus down
	hc keybind $Mod-k     focus up
	hc keybind $Mod-l     focus right

	# moving clients in tiling and floating mode
	hc keybind $Mod-Shift-Left  shift left
	hc keybind $Mod-Shift-Down  shift down
	hc keybind $Mod-Shift-Up    shift up
	hc keybind $Mod-Shift-Right shift right
	hc keybind $Mod-Shift-h     shift left
	hc keybind $Mod-Shift-j     shift down
	hc keybind $Mod-Shift-k     shift up
	hc keybind $Mod-Shift-l     shift right

	# splitting frames
	# create an empty frame at the specified direction
	hc keybind $Mod-u       split   bottom  0.5
	hc keybind $Mod-o       split   right   0.5
	# let the current frame explode into subframes
	hc keybind $Mod-Control-space split explode

	# resizing frames and floating clients
	resizestep=0.02
	hc keybind $Mod-Control-h       resize left +$resizestep
	hc keybind $Mod-Control-j       resize down +$resizestep
	hc keybind $Mod-Control-k       resize up +$resizestep
	hc keybind $Mod-Control-l       resize right +$resizestep
	hc keybind $Mod-Control-Left    resize left +$resizestep
	hc keybind $Mod-Control-Down    resize down +$resizestep
	hc keybind $Mod-Control-Up      resize up +$resizestep
	hc keybind $Mod-Control-Right   resize right +$resizestep

	# tags
	tag_names=( {1..9} )
	tag_keys=( {1..9} 0 )

	hc rename default "${tag_names[0]}" || true
	for i in "${!tag_names[@]}" ; do
	    hc add "${tag_names[$i]}"
	    key="${tag_keys[$i]}"
	    if ! [ -z "$key" ] ; then
	        hc keybind "$Mod-$key" use_index "$i"
	        hc keybind "$Mod-Shift-$key" move_index "$i"
	    fi
	done

	# cycle through tags
	hc keybind $Mod-period use_index +1 --skip-visible
	hc keybind $Mod-comma  use_index -1 --skip-visible

	# layouting
	hc keybind $Mod-r remove
	hc keybind $Mod-s floating toggle
	hc keybind $Mod-f fullscreen toggle
	hc keybind $Mod-Shift-f set_attr clients.focus.floating toggle
	hc keybind $Mod-Shift-m set_attr clients.focus.minimized true
	hc keybind $Mod-Control-m jumpto last-minimized
	hc keybind $Mod-p pseudotile toggle
	# The following cycles through the available layouts within a frame, but skips
	# layouts, if the layout change wouldn't affect the actual window positions.
	# I.e. if there are two windows within a frame, the grid layout is skipped.
	hc keybind $Mod-space                                                           \
	            or , and . compare tags.focus.curframe_wcount = 2                   \
	                     . cycle_layout +1 vertical horizontal max vertical grid    \
	               , cycle_layout +1

	# mouse
	hc mouseunbind --all
	hc mousebind $Mod-Button1 move
	hc mousebind $Mod-Button2 zoom
	hc mousebind $Mod-Button3 resize

	# focus
	hc keybind $Mod-BackSpace   cycle_monitor
	hc keybind $Mod-Tab         cycle_all +1
	hc keybind $Mod-Shift-Tab   cycle_all -1
	hc keybind $Mod-c cycle
	hc keybind $Mod-i jumpto urgent

	# app / terminal
	hc keybind $Mod-Shift-a spawn sakura
	hc keybind $Mod-Control-a spawn xfce4-terminal
	hc keybind $Mod-Shift-t spawn xterm
	hc keybind $Mod-Control-t spawn urxvt

	# app / rofi
	#hc keybind $Mod-Shift-r spawn rofi -show run
	hc keybind $Mod-Shift-w spawn rofi rofi -show window -show-icons
	hc keybind $Mod-Shift-d spawn rofi rofi -show drun -show-icons

	# app / favorite
	#hc keybind $Mod-Shift-f spawn pcmanfm-qt
	hc keybind $Mod-Shift-g spawn pcmanfm-qt
	hc keybind $Mod-Shift-b spawn firefox
	hc keybind $Mod-Shift-e spawn mousepad

}

##
### Tail: Skel / Keybind
################################################################################


################################################################################
### Head: Skel / Theme
##

skel_theme () {

	# theme
	hc attr theme.tiling.reset 1
	hc attr theme.floating.reset 1
	hc set frame_border_active_color '#222222cc'
	hc set frame_border_normal_color '#101010cc'
	hc set frame_bg_normal_color '#565656aa'
	hc set frame_bg_active_color '#345F0Caa'
	hc set frame_border_width 1
	hc set always_show_frame on
	hc set frame_bg_transparent on
	hc set frame_transparent_width 5
	hc set frame_gap 4

	hc attr theme.title_height 15
	hc attr theme.title_font 'Noto Sans CJK TC:pixelsize=12'  # example using Xft
	#hc attr theme.title_font 'Dejavu Sans:pixelsize=12'  # example using Xft
	# hc attr theme.title_font '-*-fixed-medium-r-*-*-13-*-*-*-*-*-*-*'
	hc attr theme.padding_top 2  # space below the title's baseline (i.e. text depth)
	hc attr theme.active.color '#345F0Cef'
	hc attr theme.title_color '#ffffff'
	hc attr theme.normal.color '#323232dd'
	hc attr theme.urgent.color '#7811A1dd'
	hc attr theme.normal.title_color '#898989'
	hc attr theme.inner_width 1
	hc attr theme.inner_color black
	hc attr theme.border_width 3
	hc attr theme.floating.border_width 4
	hc attr theme.floating.outer_width 1
	hc attr theme.floating.outer_color black
	hc attr theme.active.inner_color '#789161'
	hc attr theme.urgent.inner_color '#9A65B0'
	hc attr theme.normal.inner_color '#606060'
	# copy inner color to outer_color
	for state in active urgent normal ; do
	    hc substitute C theme.${state}.inner_color \
	        attr theme.${state}.outer_color C
	done
	hc attr theme.active.outer_width 1
	hc attr theme.background_color '#141414'

	hc set window_gap 0
	hc set frame_padding 0
	hc set smart_window_surroundings off
	hc set smart_frame_surroundings on
	hc set mouse_recenter_gap 0

}


##
### Tail: Skel / Theme
################################################################################


################################################################################
### Head: Skel / Rule
##

skel_rule () {

	# rules
	hc unrule -F
	#hc rule class=XTerm tag=1 # move all xterms to tag 1
	#hc rule class=Sakura tag=1 # move all Sakura to tag 1
	hc rule class=Atom tag=2 # move all Atom to tag 2
	hc rule class=firefox tag=3 # move all Firefox to tag 3
	hc rule class=pcmanfm-qt tag=4 # move all Pcmanfm-qt to tag 4
	hc rule focus=on # normally focus new clients
	hc rule floatplacement=smart
	#hc rule focus=off # normally do not focus new clients
	# give focus to most common terminals
	#hc rule class~'(.*[Rr]xvt.*|.*[Tt]erm|Konsole)' focus=on
	hc rule windowtype~'_NET_WM_WINDOW_TYPE_(DIALOG|UTILITY|SPLASH)' floating=on
	hc rule windowtype='_NET_WM_WINDOW_TYPE_DIALOG' focus=on
	hc rule windowtype~'_NET_WM_WINDOW_TYPE_(NOTIFICATION|DOCK|DESKTOP)' manage=off

	hc set tree_style '╾│ ├└╼─┐'

	# unlock, just to be sure
	hc unlock

}


##
### Tail: Skel / Rule
################################################################################


################################################################################
### Head: Skel / Up
##

skel_monitor () {
	retun 0
	# do multi monitor setup here, e.g.:
	# hc set_monitors 1280x1024+0+0 1280x1024+1280+0
	# or simply:
	# hc detect_monitors
}

##
### Tail: Skel / Up
################################################################################


################################################################################
### Head: Skel / Up
##

skel_up () {
	PATH="$HOME/.config/herbstluftwm/bin:$PATH"

	hlwm-up
}

##
### Tail: Skel / Up
################################################################################
