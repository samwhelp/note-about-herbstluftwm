---
title: Herbstluftwm / Xsession
nav_order: 5022
has_children: false
parent: 我的設定
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


## 探索

執行

``` sh
cat /usr/share/xsessions/herbstluftwm-session.desktop
```

顯示

```
[Desktop Entry]
Type=XSession
Exec=/usr/local/bin/herbstluftwm-session.sh
TryExec=/usr/local/bin/herbstluftwm-session.sh
Name=Be Herbstluftwm
Comment=Herbstluftwm Xsession

Name[zh_TW]=Be Herbstluftwm
Comment[zh_TW]=Herbstluftwm Xsession
```
