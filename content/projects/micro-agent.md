---
title: "micro-agent"
date: 2026-10-20
description: 面向本地开发任务的轻量软件工程智能体，以 Bash 工具循环为核心，支持 ask、auto、yolo 三种自主模式、交互式终端与 JSONL 编排接口；提供可动态追加和重读的 system prompt、AGENTS.md 自动发现、Skills 管理及会话恢复，便于定制项目规则并扩展 subagent 工作流。
weight: 1
---

# micro-agent

[micro-agent](https://github.com/hiraethecho/micro-agent) 是一个面向软件开发任务的轻量级智能体。它以简洁的 Bash 工具循环为核心，让模型能够查看项目、执行命令，并根据执行结果继续完成工作；项目也提供直观的终端交互界面，适合本地开发与实验。

项目提供 `ask`、`auto` 和 `yolo` 三种运行模式，可按任务需要设置工具调用的自主程度；用户级与项目级配置让个人偏好和项目规则能够灵活组合。除了交互式 REPL，它还实现了 JSONL 输入输出协议：外部程序按行发送任务，接收结构化的 assistant、工具调用、执行结果和审批事件，从而能够稳定地编排智能体运行。

system prompt 采用可组合的“来源”设计。除了基础提示词，用户可以在会话中通过 `/append-system-prompt` 追加一段临时指令，也可以追加文件路径；文本适合快速补充当前任务目标，文件适合复用项目约定、工作流或领域说明。各来源会随会话保存，能够单独查看、启用、禁用或移除。文件来源在每次请求模型前重新读取，因此修改提示词文件后，下一轮就会使用更新内容，无需重建会话。

micro-agent 会自动发现适用的 `AGENTS.md`，将其作为可管理的文件来源加入会话，并在每次模型请求前重新读取；工作过程中发现新的适用规则文件时也会加入。Skills 则可从项目和用户目录发现，并在 system prompt 中提供启用 Skill 的名称、说明与路径；模型需要具体技能时再读取对应 `SKILL.md`，按需获得完整指引。这样既能共享项目级规则，也能按任务组合 Skills，同时保持提示上下文清晰可控。

JSONL 模式使 micro-agent 不只可供人直接交互，也能作为更大智能体系统中的可编排执行单元。主 agent 可以通过结构化协议启动独立的 micro-agent 会话、传入子任务，并消费其过程事件与结果，为实现 subagent 协作提供了直接接口。项目使用 Python 构建，兼容 OpenAI API 格式的模型服务，也可连接本地 Ollama，便于按自己的开发环境部署和扩展。

动态添加 `system prompt` 的效果
![dog](https://asset.877675.xyz/20261020092530308.webp)

加载 `terse` skills 的对比
![on](https://asset.877675.xyz/20261020092530310.webp)
![off](https://asset.877675.xyz/20261020092530309.webp)
