---
title: "Suckless"
date: 2026-08-29
description: Forks of desktop environment components, mainly written in C.
---

# Suckless

A collection of forks of desktop environment components on Linux, including [dwm](https://dwm.suckless.org/), dwmblocks, and others. Written in C. Not built by AI.

## Usage

Each tool builds independently, as in the standard suckless flow:

```sh
cd <tool>            # dwm, st, dmenu, dwl, dvtm, slock, surf, dwmblocks, tabbed, maomaowm …
sudo make install
```

The repo aggregates upstream tools — including flexipatch variants (`st-flexipatch`, `dmenu-flexipatch`, `tabbed-flexipatch`), a large `dwm/patch/` collection of `.diff` files, and `maomaowm` (a wlroots compositor). Each `config.h` already carries my personal patches.

GitHub: [hiraethecho/suckless](https://github.com/hiraethecho/suckless)
