---
title: 設定
nav_order: 2000
has_children: true
---

# 設定


## 設定檔路徑

| 路徑 | 備註 |
| --- | --- |
| [/etc/xdg/herbstluftwm/autostart](https://github.com/herbstluftwm/herbstluftwm/blob/master/share/autostart) | 預設安裝 |
| ~/.config/herbstluftwm/autostart | 客製修改 |

在「herbstluftwm」啟動後，會自動執行「~/.config/herbstluftwm/autostart」。

所以可以將「/etc/xdg/herbstluftwm/autostart」這個檔案，

複製到「~/.config/herbstluftwm/autostart」這個路徑，修改成自己想要的設定。


## 設定範例

| 設定範例 | 備註 |
| --- | --- |
| [default](https://github.com/samwhelp/note-about-herbstluftwm/tree/gh-pages/_demo/config/herbstluftwm-config/default) | [Herbstluftwm 預設設定架構](#herbstluftwm-預設設定架構) |
| [prototype_basic](https://github.com/samwhelp/note-about-herbstluftwm/tree/gh-pages/_demo/config/herbstluftwm-config/prototype_basic) | 設定架構原型 |
| [prototype_advance](https://github.com/samwhelp/note-about-herbstluftwm/tree/gh-pages/_demo/config/herbstluftwm-config/prototype_advance) | 設定架構原型 |
| [prototype_enhance](https://github.com/samwhelp/note-about-herbstluftwm/tree/gh-pages/_demo/config/herbstluftwm-config/prototype_enhance) | 設定架構原型 |
| [main](https://github.com/samwhelp/note-about-herbstluftwm/tree/gh-pages/_demo/config/herbstluftwm-config/main) | [我的設定架構](#我的設定架構) |


## 按鍵綁定使用情境

按鍵綁定，目前有兩種，一種是「預設的設定」，一種是「我客製的設定」。

請參考下面的整理，可以輔助記憶。

| 使用情境 | 設定檔 |
| --- | --- |
| [預設版本](https://samwhelp.github.io/note-about-herbstluftwm/read/scenario_default.html) | [觀看](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/default/config/herbstluftwm/autostart) |
| [客製版本](https://samwhelp.github.io/note-about-herbstluftwm/read/scenario.html) | [觀看](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/sys/profile/main/keybind.sh) |


## 我的設定架構

| 主題 | 備註 |
| --- | --- |
| [xsession](config/main/xsession) | 登入啟動流程 |


## Herbstluftwm 預設設定架構

| 主題 | 備註 |
| --- | --- |
| [xsession](config/default/xsession) | 登入啟動流程 |
