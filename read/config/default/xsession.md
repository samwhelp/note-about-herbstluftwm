---
title: Herbstluftwm / Xsession
nav_order: 5022
has_children: false
parent: 預設設定
grand_parent: 設定
---


# Herbstluftwm / Xsession


## 登入流程

### Start

| Path | Title |
| --- | --- |
| /usr/share/xsessions/herbstluftwm.desktop | herbstluftwm |
| /usr/bin/herbstluftwm | --- |

### Up

| Path | Note |
| --- | --- |
| ~/.config/herbstluftwm/autostart | after exec herbstluftwm  |


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
