---
title: "AiKit"
date: 2026-08-29
description: A collection of AI agent tools (skills, agents, plugins, personas) for coding agents, especially pi.
---

# AiKit

[AiKit](https://github.com/hiraethecho/AiKit) is my collection of AI agent resources: skills, agents, commands, MCP tools, plugins, personas and templates — with a focus on the pi coding agent — plus a two-phase deployment tool that links resources into `.agents/` and writes pi `settings.json`.

## What's inside

- **Agents**: pi, opencode, reasonix, zerostack, dsh; also codex, claude code
- **pi extensions**: pi-toolkit (rtk, cave, toon, doc, role), pi-agents, pi-asks, pi-tasks, pi-board, pi-footer …
- **Skills, personas, deploy scripts**

## Deploy / usage

Single source of truth is TOML manifests (`manifest.toml` / `preset.toml` / `harness/agents.toml`); generation produces multiple formats and the deployer links them:

```sh
python3 deploy/gen.py --format all          # regenerate lua/json/sh from manifests
python3 deploy/deploy.py list                # show what would be linked
python3 deploy/deploy.py doctor              # check the installation
python3 deploy/deploy.py scan                # scan available resources
python3 deploy/deploy.py agents --project <proj>  # link agents for a project
python3 deploy/deploy.py agents --global          # link agents globally
```

There are three parallel implementations: Python `deploy.py`, Lua `deploy.lua`, and bash.

## Docs

- `docs/` — agentkit-sdd, pi, tools
- `AGENTS.md`, `SPEC.md`, `DESIGN.md`

GitHub: [hiraethecho/AiKit](https://github.com/hiraethecho/AiKit)