---
title: "Suckless"
date: 2026-08-29
description: 桌面环境组件的个性化分支合集，主要以 C 语言编写。
---

# Suckless

本仓库收录了我在 Linux 桌面环境若干组件上维护的个性化分支，涵盖 [dwm](https://dwm.suckless.org/)、dwmblocks 等。全部代码以 C 语言编写，均为手工完成，未经 AI 辅助。

## 用法

各组件独立构建，遵循标准的 suckless 流程：

```sh
cd <tool>            # dwm、st、dmenu、dwl、dvtm、slock、surf、dwmblocks、tabbed、maomaowm …
sudo make install
```

本仓库聚合了上游工具，包括 flexipatch 变体（`st-flexipatch`、`dmenu-flexipatch`、`tabbed-flexipatch`）、`dwm/patch/` 下的大量 `.diff` 补丁，以及 `maomaowm`（一个 wlroots 合成器）。每个 `config.h` 已内置我的个性化补丁。

GitHub：[hiraethecho/suckless](https://github.com/hiraethecho/suckless)
