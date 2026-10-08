---
title: "AiKit"
date: 2026-08-30
description: AI 智能体工具集合（skills、智能体、插件、人设等），主要面向 pi。
---

# AiKit

[AiKit](https://github.com/hiraethecho/AiKit) 是一个 AI 智能体资源集合：skills、智能体、命令、MCP 工具、插件、人设与模板，尤其围绕 pi 编码智能体；并配套一个两阶段部署工具，可将资源链接到 `.agents/` 并生成 pi 的 `settings.json`。

## 内容

- **智能体**：pi、opencode、reasonix、zerostack、dsh；以及 codex、claude code
- **pi 扩展**：pi-toolkit（rtk、cave、toon、doc、role）、pi-agents、pi-asks、pi-tasks、pi-board、pi-footer 等
- **Skills、人设、部署脚本**

大部分是搜集资源的整理，少部分是自己开发/vibe的工具。

- [pi-board](/projects/pi-board) 是比较满意的一个工具，但只是个开始，并非完整形态。
- `pi-toolkit` 是 `pi` 的小工具合集，对我个人非常顺手
- 一个 `night-run` 的 Skill，用来晚上睡觉时做长程任务
- `teachme` Skill 初始化一个文件夹，教我学东西

## 部署

通过一个脚本来快速部署特定资源到项目里，用 `manifest.toml` 记录工具组合包。
