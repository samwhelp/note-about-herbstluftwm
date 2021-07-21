---
title: Xsession
nav_order: 5022
has_children: false
parent: 預設設定
grand_parent: 設定
---


# Xsession


## 登入流程

### Start

| Path | Title |
| --- | --- |
| [/usr/share/xsessions/herbstluftwm.desktop](https://github.com/herbstluftwm/herbstluftwm/blob/master/share/herbstluftwm.desktop) | herbstluftwm |
| [/usr/bin/herbstluftwm](https://herbstluftwm.org/herbstluftwm.html) | |

### Up

| Path | Note |
| --- | --- |
| [~/.config/herbstluftwm/autostart](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/default/config/herbstluftwm/autostart) | after exec herbstluftwm  |


## 探索

執行

``` sh
cat /usr/share/xsessions/herbstluftwm.desktop
```

顯示

```
[Desktop Entry]
Encoding=UTF-8
Name=herbstluftwm
Comment=Manual tiling window manager
Exec=herbstluftwm --locked
Type=Application
```

## 相關筆記

* [xsession 簡易入門](https://samwhelp.github.io/note-about-xsession/)
