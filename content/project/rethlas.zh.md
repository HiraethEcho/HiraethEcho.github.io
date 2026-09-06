---
title: "Rethlas"
date: 2026-08-29
description: 自然语言数学推理系统——fork 自 frenzymath/Rethlas 并做了扩展。
---

# Rethlas

[Rethlas](https://github.com/hiraethecho/Rethlas) 是一个围绕两个 Codex 智能体构建的自然语言数学推理系统，fork 自 [frenzymath/Rethlas](https://github.com/frenzymath/Rethlas)，并由我进行了扩展：

- **生成智能体** 从 markdown 文件中读取数学问题，书写非形式证明蓝图；
- **验证智能体** 检查该蓝图，并给出结构化结论。

`run.sh` 负责编排迭代式的“证明—修复”循环，直至产出经过验证的蓝图。

## 安装

```sh
npm install -g @openai/codex
uv venv && uv pip install -r generation/mcp/requirements.txt
cd verification && uv venv && uv pip install -r requirements.txt && uv run uvicorn api.server:app --port 8091
```

## 运行

```sh
./run.sh --gen-agent <agent> --gen-model <model> --ver-agent <agent> --ver-model <model>
```

环境变量：`MAX_ITERATIONS`、`PROBLEM_FILE=data/<problem>.md`。

## 查看结果

```sh
./hugo.sh          # 或 ./site/serve.sh
```

站点由 Hugo 或 Zola（MATbook）构建，端口 3264。

## 目录结构

| 路径             | 用途                                    |
| ---------------- | --------------------------------------- |
| `run.sh`         | 入口：运行生成循环                      |
| `generation/`    | 生成智能体、MCP 工具                    |
| `verification/`  | 验证智能体（HTTP 服务）                 |
| `data/`          | 数学问题 markdown 文件                  |
| `site/`          | 静态站点构建器                          |

## 文档

- `Rethlas-doc.md` — 更深入的架构说明
- `add-agent-guide.md` — 如何添加更多智能体

GitHub：[hiraethecho/Rethlas](https://github.com/hiraethecho/Rethlas)