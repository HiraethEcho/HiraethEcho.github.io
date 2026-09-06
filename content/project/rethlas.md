---
title: "Rethlas"
date: 2026-08-29
description: A natural-language math reasoning system — forked from frenzymath/Rethlas and extended.
---

# Rethlas

[Rethlas](https://github.com/hiraethecho/Rethlas) is a natural-language reasoning system for mathematics built around two Codex agents, forked from [frenzymath/Rethlas](https://github.com/frenzymath/Rethlas) and extended by me:

- the **generation agent** reads a math problem from a markdown file and writes an informal proof blueprint;
- the **verification agent** checks that blueprint and produces a structured verdict.

`run.sh` orchestrates an iterative proof-and-repair loop until a verified blueprint is produced.

## Setup

```sh
npm install -g @openai/codex
uv venv && uv pip install -r generation/mcp/requirements.txt
cd verification && uv venv && uv pip install -r requirements.txt && uv run uvicorn api.server:app --port 8091
```

## Run

```sh
./run.sh --gen-agent <agent> --gen-model <model> --ver-agent <agent> --ver-model <model>
```

Environment: `MAX_ITERATIONS`, `PROBLEM_FILE=data/<problem>.md`.

## View results

```sh
./hugo.sh          # or: ./site/serve.sh
```

The site builds with Hugo or Zola (MATbook) and serves on port 3264.

## Layout

| Path             | Purpose                                    |
| ---------------- | ------------------------------------------ |
| `run.sh`         | Entry point: runs the generation loop      |
| `generation/`    | Proof-generation agent, MCP tools          |
| `verification/`  | Proof-verification agent (HTTP service)    |
| `data/`          | Math problem markdown files                |
| `site/`          | Static site builders                       |

## Docs

- `Rethlas-doc.md` — deeper architecture
- `add-agent-guide.md` — how to add more agents

GitHub: [hiraethecho/Rethlas](https://github.com/hiraethecho/Rethlas)