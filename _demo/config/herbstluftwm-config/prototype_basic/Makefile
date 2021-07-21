default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make manjaro-prepare'
	@echo
	@echo '	$$ make ubuntu-prepare'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo
.PHONY: help


manjaro-prepare:
	pamac install herbstluftwm
.PHONY: manjaro-prepare


ubuntu-prepare:
	sudo apt-get install herbstluftwm
.PHONY: ubuntu-prepare


install:
	install -Dm755 ./config/herbstluftwm/autostart ~/.config/herbstluftwm/autostart
	install -Dm755 ./config/herbstluftwm/bin/hlwm-up ~/.config/herbstluftwm/bin/hlwm-up
	install -Dm755 ./config/herbstluftwm/bin/hlwm-up-wallpaper ~/.config/herbstluftwm/bin/hlwm-up-wallpaper
	install -Dm755 ./config/herbstluftwm/bin/hlwm-up-compositor ~/.config/herbstluftwm/bin/hlwm-up-compositor
	install -Dm755 ./config/herbstluftwm/bin/hlwm-up-panel ~/.config/herbstluftwm/bin/hlwm-up-panel
	install -Dm755 ./config/herbstluftwm/bin/hlwm-up-applet ~/.config/herbstluftwm/bin/hlwm-up-applet
.PHONY: install


remove:
	rm -f ~/.config/herbstluftwm/autostart
	rm -f ~/.config/herbstluftwm/bin/hlwm-up
	rm -f ~/.config/herbstluftwm/bin/hlwm-up-wallpaper
	rm -f ~/.config/herbstluftwm/bin/hlwm-up-compositor
	rm -f ~/.config/herbstluftwm/bin/hlwm-up-panel
	rm -f ~/.config/herbstluftwm/bin/hlwm-up-applet
.PHONY: remove
