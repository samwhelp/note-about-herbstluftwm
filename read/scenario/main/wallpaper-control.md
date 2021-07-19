---
title: 桌面圖片
nav_order: 5070
has_children: false
parent: 使用情境(客製)
---


# 桌面圖片

## 桌面圖片切換

| 按鍵組合 | 功能 | 指令 | 程式
| --- | --- | --- | --- |
| `Alt + w` | 桌面圖片隨機選取切換 | `hlwm-wallpaper-ctrl shuf` | [hlwm-wallpaper-ctrl](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-wallpaper-ctrl) |
| `Alt + Control + w` | 桌面圖片切換成預設 | `hlwm-wallpaper-ctrl default` | [hlwm-wallpaper-ctrl](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-wallpaper-ctrl) |


### 注意事項

* 這個功能需要有「[wallpaper-select-feh](https://samwhelp.github.io/note-about-fzf/read/project/wallpaper-select/wallpaper-select-feh.html)」這個輔助工具。
* 隨機選取的資夾路徑是「[~/Pictures/Wallpaper](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-wallpaper-ctrl#L59)」，所以要把圖片放到這個資料夾。
* 預設的圖片是「[~/Pictures/Wallpaper/default.png](https://github.com/samwhelp/note-about-herbstluftwm/blob/gh-pages/_demo/config/herbstluftwm-config/main/config/herbstluftwm/bin/hlwm-wallpaper-ctrl#L50)」。
