---
title: "Cutui"
date: 2026-08-29
description: 一款基于终端界面的视频编辑工具
---

## 项目缘起

我拥有一台 DJI Action 4 运动相机，常在骑行过程中录制视频，因此希望以较为快捷的方式完成简单的视频剪辑工作。基本思路是借助 FFmpeg（理所当然的选择）对视频进行切分与拼接：首先需要确定各视频的入点与出点，随后完成拼接。若无需重新渲染，FFmpeg 可以直接以无损方式复制视频流（例如 [LosslessCut](https://losslesscut.app/) 便是基于 FFmpeg 的图形界面剪辑工具）。

然而，手工编写命令行参数几乎不具可行性，而精确定位剪辑点同样颇为费时。

## 设计思路

受 [ninve](https://github.com/Niedzwiedzw/ninve) 项目的启发，我决定开发一款终端界面的视频编辑器：以 mpv 负责预览（并用于确定入点与出点），以 FFmpeg 负责导出。

## 当前进展

该项目距离完善仍有相当距离，目前仅实现了最小可用版本（MVP），代码以 Rust 编写。

GitHub：[hiraethecho/cutui](https://github.com/hiraethecho/cutui)
