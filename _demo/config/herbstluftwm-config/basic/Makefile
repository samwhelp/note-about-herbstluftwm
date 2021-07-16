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
	install -Dm755 ./config/herbstluftwm/bin/hlwm-wallpaper ~/.config/herbstluftwm/bin/hlwm-wallpaper
	install -Dm755 ./config/herbstluftwm/bin/hlwm-compositor ~/.config/herbstluftwm/bin/hlwm-compositor
	install -Dm755 ./config/herbstluftwm/bin/hlwm-panel ~/.config/herbstluftwm/bin/hlwm-panel
	install -Dm755 ./config/herbstluftwm/bin/hlwm-applet ~/.config/herbstluftwm/bin/hlwm-applet
.PHONY: install
