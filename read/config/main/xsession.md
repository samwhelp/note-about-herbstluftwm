---
title: Xsession
nav_order: 5022
has_children: false
parent: 我的設定
grand_parent: 設定
---


# Xsession


## 登入流程

### Start

| Path | Title |
| --- | --- |
| [/usr/share/xsessions/herbstluftwm-session.desktop](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/share/xsession/herbstluftwm-session.desktop) | Be Herbstluftwm |
| [/usr/local/bin/herbstluftwm-session.sh](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/share/xsession/herbstluftwm-session.sh) | |
| [/usr/bin/herbstluftwm](https://herbstluftwm.org/herbstluftwm.html) | |

### Up

| Path | Note |
| --- | --- |
| [~/.config/herbstluftwm/autostart](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/autostart) | after exec herbstluftwm  |
| [~/.config/herbstluftwm/bin/hlwm-up](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-up) | start all component |
| [~/.config/herbstluftwm/bin/hlwm-up-wallpaper](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-up-wallpaper) | feh |
| [~/.config/herbstluftwm/bin/hlwm-up-compositor](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-up-compositor) | picom |
| [~/.config/herbstluftwm/bin/hlwm-up-panel](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-up-panel) | polybar |
| [~/.config/herbstluftwm/bin/hlwm-up-applet](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-up-applet) | system tray / applet |
| [~/.config/herbstluftwm/bin/hlwm-up-xsettings](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-up-xsettings) | xsettings daemon |

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

## 相關筆記

* [xsession 簡易入門](https://samwhelp.github.io/note-about-xsession/)
