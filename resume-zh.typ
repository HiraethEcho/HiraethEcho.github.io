// 王延泽 — CV (port of resume-zh-print.typ into minimalistic-latex-cv template)
#import "@preview/minimalistic-latex-cv:0.1.1": cv, entry

#show: cv.with(
  name: "王延泽",
  metadata: (
    email: " wyz2016zxc@outlook.com",
    telephone: "+86 155 3825 5707",
    homepage: "https://keinmal.top",
    github: "GitHub: hiraethecho",
    orcid: "ORCID: 0009-0003-3661-1890",
  ),
  lang: "zh",
)

// Keep the template's LaTeX look for Latin text; fall back to a serif CJK font
// #set text(font: ("New Computer Modern", "FandolSong"))
#set text(font: ("CodeNewRoman Nerd Font Mono", "LXGW WenKai Mono"), size: 14pt)


= 经历
== 教育背景

#entry(
  title: "理学博士（在读）· 基础数学",
  name: "中国科学院数学与系统科学研究院",
  date: "预计 2027 年 6 月毕业",
)
*研究方向：* 双有理几何——Sarkisov 纲领、代数可积叶层化

#entry(
  title: "理学硕士",
  name: "中国科学院数学与系统科学研究院",
)

#entry(
  title: "理学学士",
  name: "北京航空航天大学",
)
期间任线性代数、代数几何助教。

== 荣誉奖项

- 美国大学生数学建模竞赛（MCM/ICM）— 一等奖（Meritorious Winner，两次）
- 北京航空航天大学华罗庚奖学金（两次）

= 技能

- *数学：* 双有理几何与极小模型纲领：Sarkisov 纲领、代数可积叶层化；模空间。
- *AI 实践：* 本地 PyTorch / libtorch 模型训练小项目；智能体框架搭建。
- *AI4Math：* AI 生成数学结果的人工验证；研究 harness 与 Lean 4 形式化。
- *工程：* torch（Python & C++）；Rust、C、LaTeX；熟悉 Linux 和 Git；vibe coding 开发个人使用的 CLI / TUI 程序（Rust）。

= 项目


== AI 实践

- *模型训练：* 学习 llm-from-scratch 等教程，理解 Transformer 实现、训练循环；复现训练小参数#link("https://github.com/hiraethecho/GPT_teacher-3.37M-cn")[*中文 GPT*]、#link("https://github.com/hiraethecho/tiny-reasoning-rl-lab")[*强化学习*]和 LoRA 微调。
- *AI4Math：* 学习和实践 co-mathematician 等智能体架构的工作流；对 #link("https://github.com/hiraethecho/Rethlas")[Rethlas] 进行小规模修改，适配个人工作流。实践数学推理形式化，复现#link("https://github.com/hiraethecho/toric-lean")[*toric-lean*]等项目；参与 Lean 4 平台 prove2.me。
- #link("https://github.com/hiraethecho/AiKit")[*AiKit*]：智能体工具集，适用于 pi/opencode 等编码代理，包含 skills/插件等，用于数学研究和 SDD 编程。

== 编程

- #link("https://github.com/hiraethecho/suckless")[*suckless*] — 自行 fork 的 dwm / dwmblocks（C），通过补丁手工维护，未经 AI 辅助。
- #link("https://github.com/hiraethecho/calman")[*Calman*] — 终端任务与事件管理器（CLI，Rust）。CalDAV 兼容，同步委托 radicale / vdirsyncer / rclone。
- #link("https://github.com/hiraethecho/markerss")[*Markerss*] — TUI RSS 阅读器（Rust，ratatui）：Markdown 导出、URL 收藏。
- #link("https://github.com/hiraethecho/lichtung")[*Lichtung*] — Hugo 主题（Go 模板 / SCSS），支撑两个个人站点。
- #link("https://github.com/hiraethecho/mumble")[*mumble*] — 留言板（JavaScript，Cloudflare Worker），独立页面或嵌入页面。

= 论文与报告

== 发表论文

#entry(
  title: "Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures",
  name: "Yifei Chen, Jihao Liu, and Yanze Wang",
  date: "2026",
)
- *Journal:* _International Mathematics Research Notices_, 2026(6): rnag045.

#entry(
  title: "Flop between algebraically integrable foliations on potentially KLT varieties",
  name: "Yifei Chen, Jihao Liu, and Yanze Wang",
  date: "2025",
)
- *Journal:* _International Journal of Mathematics_, 36(11): 2550035.

#entry(
  title: "A Note on the Sarkisov Program",
  name: "Yifei Chen and Yanze Wang",
  date: "2025",
)
- *In:* _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov_, LMS Lecture Note Series, pp. 231–263, Cambridge University Press.

== 预印本

_All AI-generated, human-verified._

#entry(
  title: "A klt generalized pair with infinitely generated canonical ring",
  name: "Jihao Liu and Yanze Wang",
  date: "2026",
)
- arXiv:2608.03258.

#entry(
  title: "Twelve common flex lines in a general pencil of cubics",
  name: "Jihao Liu and Yanze Wang",
  date: "2026",
)
- arXiv:2607.26396.

== 学术报告

#entry(
  title: "代数可积与三维叶状结构的 Sarkisov 纲领",
  name: "报告人",
  date: "2026",
  location: "西交利物浦大学",
)


