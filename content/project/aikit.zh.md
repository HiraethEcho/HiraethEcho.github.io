---
title: "AiKit"
date: 2026-08-29
description: AI 智能体工具集合（skills、智能体、插件、人设等），主要面向 pi。
---

# AiKit

[AiKit](https://github.com/hiraethecho/AiKit) 是一个 AI 智能体资源集合：skills、智能体、命令、MCP 工具、插件、人设与模板，尤其围绕 pi 编码智能体；并配套一个两阶段部署工具，可将资源链接到 `.agents/` 并生成 pi 的 `settings.json`。

## 内容

- **智能体**：pi、opencode、reasonix、zerostack、dsh；以及 codex、claude code
- **pi 扩展**：pi-toolkit（rtk、cave、toon、doc、role）、pi-agents、pi-asks、pi-tasks、pi-board、pi-footer 等
- **Skills、人设、部署脚本**

## 部署 / 使用

以 TOML 清单（`manifest.toml` / `preset.toml` / `harness/agents.toml`）为唯一数据源，生成多种格式并由部署器链接：

```sh
python3 deploy/gen.py --format all          # 由清单重新生成 lua/json/sh
python3 deploy/deploy.py list                # 查看将要链接的内容
python3 deploy/deploy.py doctor              # 检查安装状态
python3 deploy/deploy.py scan                # 扫描可用资源
python3 deploy/deploy.py agents --project <proj>  # 为项目链接智能体
python3 deploy/deploy.py agents --global          # 全局链接智能体
```

提供三套并行的实现：Python `deploy.py`、Lua `deploy.lua` 与 bash。

## 文档

- `docs/` — agentkit-sdd、pi、tools
- `AGENTS.md`、`SPEC.md`、`DESIGN.md`

GitHub：[hiraethecho/AiKit](https://github.com/hiraethecho/AiKit)