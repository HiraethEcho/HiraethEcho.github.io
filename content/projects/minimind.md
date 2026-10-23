---
title: "MiniMind"
date: 2026-10-20
description: 基于开源 MiniMind 开展小型语言模型的代码研究与训练复现，实践从中文数据准备、模型结构与预训练，到监督微调、LoRA、偏好优化、强化学习、工具调用和蒸馏等流程；相关语料与 tokenizer 也为 ARnDlm 的自回归和扩散模型对照实验提供基础。
---

# MiniMind

[MiniMind](https://github.com/hiraethecho/MiniMind) 是我学习和复现小型语言模型训练的实践项目，基于开源 MiniMind 项目开展代码研究与实验。上游以 PyTorch 实现轻量语言模型和训练流程，让研究者能够从模型结构与训练代码入手，理解一个语言模型如何逐步获得生成、对话和工具使用能力。

我围绕模型结构、训练流程与实验结果开展复现和记录，涉及预训练、监督微调、LoRA、DPO、PPO/GRPO、工具调用与知识蒸馏等环节。通过直接运行并分析各阶段代码，我建立了从数据准备、模型训练到推理评估的实践经验。MiniMind 的中文语料与 tokenizer 也为 [ARnDlm](/projects/arndlm) 的 AR/DLM 对照实验提供了基础。

这项工作将模型训练的不同阶段放在同一套轻量项目中学习和比较，帮助我把 LLM 训练知识落实到可运行的代码与实验流程中。项目代码与上游说明见 [GitHub 仓库](https://github.com/hiraethecho/MiniMind)。

小参数的模型效果很差
![capital](https://asset.877675.xyz/20261020092530307.webp)
