---
title: "Calman"
date: 2026-08-29
description: 一款同时提供命令行与 TUI 界面的任务与事件管理工具
---

# Calman

本项目的灵感来源于 Taskwarrior——一款功能出色且强大的命令行任务管理工具。然而，Taskwarrior 在任务同步方面不够便捷，且不支持事件管理，其功能复杂度也超出了我的实际需要。另一款工具 Cfait 采用 ICS 格式存储数据，便于与 CalDAV 协议协同工作（本人使用 Radicale 作为服务端，并与手机同步），但其界面过于繁复。Todoman 同样基于 ICS 文件，而我更倾向于 Taskwarrior 风格的命令交互。

因此，我设计并实现了[这一工具](https://github.com/hiraethecho/calman)，全部代码以 Rust 编写。

该项目以 JSONL 或 ICS（兼容 CalDAV）格式存储任务与事件；数据同步则交由外部工具完成（如 git、pimsync、rclone）。

当前状态：核心功能已基本可用，但规划中的部分特性尚待实现。
