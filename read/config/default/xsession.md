---
title: Herbstluftwm / Xsession
nav_order: 5022
has_children: false
parent: 預設設定
grand_parent: 設定
---


# Herbstluftwm / Xsession


## Login Process

### Start

| Path | Title |
| --- | --- |
| /usr/share/xsessions/herbstluftwm-session.desktop | Be Herbstluftwm |
| /usr/local/bin/herbstluftwm-session.sh | --- |
| /usr/bin/herbstluftwm | --- |

### Up

| Path | Note |
| --- | --- |
| ~/.config/herbstluftwm/autostart | after exec herbstluftwm  |
| ~/.config/herbstluftwm/bin/hlwm-up | start all component |
| ~/.config/herbstluftwm/bin/hlwm-up-wallpaper | feh |
| ~/.config/herbstluftwm/bin/hlwm-up-compositor | picom |
| ~/.config/herbstluftwm/bin/hlwm-up-panel | polybar |
| ~/.config/herbstluftwm/bin/hlwm-up-applet | system tray / applet |
