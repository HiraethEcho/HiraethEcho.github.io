---
title: 关于我
description: 王延泽 — 中国科学院大学数学专业博士研究生，研究方向为双有理几何。
---

这一页是我的职业形象。

我目前就读于中国科学院数学与系统科学研究院（AMSS，隶属中国科学院大学，UCAS），导师陈亦飞教授，攻读博士学位，预计于 2027 年 6 月毕业。我的研究集中于代数可积叶层化的 Sarkisov 纲领，以及极小模型纲领中的若干相关问题。

近期，我也在积极探索 **AI4Math** 这一方向，包括人工验证 AI 生成的数学论文、搭建数学研究 harness（例如 fork 并改进 [Rethlas](/zh/project/rethlas)）、探索形式化证明语言 Lean 4 等。

<!-- 同时也是微软一个 AI4Math 项目（目前私有）的贡献者。 -->

此外，我对大模型训练、（数学）数据标注等 AI 基础设施（AI infra）方向，以及面向数学研究的后训练（post-training）和智能体框架（harness）也抱有浓厚兴趣。目前正在复现的小规模项目详见下文[项目](#xiang-mu)章节。

无论是学术界还是工业界的研究岗位，我都持开放态度，欢迎垂询与合作。简版[简历](/resume-zh.pdf)可供下载。

## 经历

### 教育背景

- **理学博士（在读）**，中国科学院数学与系统科学研究院，中国科学院大学 — 2024 年至 2027 年（预计毕业）。研究方向：双有理几何——Sarkisov 纲领、代数可积叶层化。指导教师：陈亦飞教授
- **理学硕士**，中国科学院数学与系统科学研究院，中国科学院大学 — 2020 年至 2024 年。硕士学位论文：[《叶层化对的 Sarkisov 纲领》](/zh/paper/master)。指导教师：陈亦飞教授
- **理学学士**，北京航空航天大学 — 2016 年至 2020 年。学士学位论文：[《曲线模空间》](/zh/paper/bachelor)

#### 教学

- **助教**，北京航空航天大学（本科期间）：线性代数、代数几何

### 荣誉奖项

- **美国大学生数学建模竞赛（MCM/ICM）** — 一等奖（Meritorious Winner，两次）
- **北京航空航天大学华罗庚奖学金**（两次）
- **中国科学院** — 三好学生

## 技能

- **数学**：双有理几何与极小模型纲领——Sarkisov 纲领、代数可积叶层化；模空间
- **AI 实践**：PyTorch / libtorch 模型训练小项目；智能体框架搭建
- **AI4Math**：AI 生成数学结果的人工验证；研究 harness；Lean 4 形式化
- **工程**：C、Rust、TUI 应用开发（ratatui）、Git；日常使用 Arch Linux + Neovim
- **语言**：中文（母语）、英语（专业工作水平）

## 项目

### AI 实践

**模型训练**（复现小参数训练）

- **[GPT teacher](https://github.com/hiraethecho/GPT_teacher-3.37M-cn)** — 从 0 到 1 在 CPU 上训练 3.37M 参数中文 GPT（含知识蒸馏）
- **[tiny-reasoning-rl-lab](https://github.com/hiraethecho/tiny-reasoning-rl-lab)** — 41K 参数 reasoning-RL 实验（REINFORCE + KL，CPU）
- **Qwen3-0.6B 数学 LoRA 微调**（toy-tune）— 在 GSM8K 子集上做玩具级微调，跑通「数据 → 训练 → 追踪 → 产物」全链路（Trackio 追踪）

**AI4Math**

- **[toric-lean](https://github.com/hiraethecho/toric-lean)** — 在 Lean 4 中复现 Cox–Little–Schenck《Toric varieties》的形式化
- 学习和实践 co-mathematician 等智能体架构的工作流
- [Rethlas](/zh/project/rethlas) — 双智能体数学推理 harness 的 fork，适配个人工作流
- 参与 Lean 4 平台 [prove2.me](https://prove2.me) 上的数学形式化实践
- [AiKit](/zh/project/aikit) — 面向编码智能体（尤其是 pi）的代理 / skills / 插件集合，用于数学研究与 SDD 编程

### 编程与开源

除学术与 AI4Math 之外，我也热衷于编程与 Linux 生态的探索：维护自己的 dwm（X11 动态平铺窗口管理器）及若干 [suckless](/zh/project/suckless) 组件的个性化分支，独立开发了支撑两个个人网站的 Hugo 主题，并在 AI 辅助（vibe coding）下开发了不少命令行与 TUI 工具。

- [suckless](/zh/project/suckless) — 自行 fork 的 dwm / dwmblocks 等桌面组件（C），以手工补丁方式维护，未经 AI 辅助
- [Calman](/zh/project/calman) — 终端任务与事件管理器（CLI，Rust）：JSONL/ICS 存储，CalDAV 兼容，同步委托 radicale / vdirsyncer / rclone
- [Markerss](/zh/project/markerss) — TUI RSS 阅读器（Rust，ratatui）：Markdown 导出、URL 收藏
- [Lichtung](/zh/project/lichtung) — Hugo 主题（Go 模板 / SCSS），支撑两个个人站点
- [mumble](/zh/project/mumble) — 基于 Cloudflare Worker 的留言板，可独立部署或嵌入页面
- [cutui](/zh/project/cutui) — 简易 TUI 视频编辑器（Rust）

## 论文与报告

### 发表论文

- **Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures** — Yifei Chen, Jihao Liu, Yanze Wang. [_International Mathematics Research Notices_, 2026(6): rnag045](/zh/paper/sp4afs).
- **Flop between algebraically integrable foliations on potentially KLT varieties** — Yifei Chen, Jihao Liu, Yanze Wang. [_International Journal of Mathematics_, 36(11): 2550035](/zh/paper/flop-ai-foliation).
- **A Note on the Sarkisov Program** — Yifei Chen, Yanze Wang. [_Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov_, LMS Lecture Note Series, pp. 231–263, Cambridge University Press](/zh/paper/note-sarkisov).

### 预印本

_均为 AI 生成、人工验证。_

- **A klt generalized pair with infinitely generated canonical ring** — Jihao Liu, Yanze Wang. arXiv:2608.03258. [详情](/zh/paper/klt-canonical-ring)
- **Twelve common flex lines in a general pencil of cubics** — Jihao Liu, Yanze Wang. arXiv:2607.26396. [详情](/zh/paper/flex-lines)
- **A counterexample to the odd-dimensional rank bound for abelian p-group actions** — Jihao Liu, Yanze Wang. arXiv:2607.04891. [详情](/zh/paper/rank-bound)

### 学术报告

- **2026 年** — 报告人，_代数可积与三维叶状结构的 Sarkisov 纲领_，西交利物浦大学

完整列表见[论文](/zh/paper/)页面。

## 写作

另一部分的我，以笔名 **Hiraeth** 在 [memex](https://memex.keinmal.top) 书写关于存在、哲学、现代性、文学与文化工业的随笔，书评影评、个人内省，以及偶尔的诗。随笔全部手工写作：不借助 AI 生成或润色，以保护语言能力、进而保护思考能力（知识获取则乐于借助 AI）。部分文章同步发布在个人公众号。  
域名 _keinmal.top_ 出自德语谚语 _einmal ist keinmal_，即"只有一次等于没有"。

## 联系方式

- **电子邮箱**：wangyanze@amss.ac.cn — 欢迎就研究与合作事宜联系
- **GitHub**：[hiraethecho](https://github.com/hiraethecho) — 代码与开源项目
- **ORCID**：[0009-0003-3661-1890](https://orcid.org/0009-0003-3661-1890) — 学术发表记录
- **技术笔记**：[docs.keinmal.top](https://docs.keinmal.top) — 技术文档与笔记