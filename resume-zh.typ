// ZH resume — cv-soft-and-hard template.
// Content written inline; content.typ is the reference source of truth.
#import "@preview/cv-soft-and-hard:0.1.0": entry, section, styling, subsection

#set document(author: "王延泽", title: "王延泽 - 简历")
#show: styling
#set text(font: ("Liberation Serif", "LXGW WenKai Mono"), size: 12pt)
#set page(margin: (left: 2cm, right: 2cm, top: 2cm, bottom: 2cm))
#set par(leading: 1.1em)       // 行距（默认约 1.2）
#show heading.where(level: 1): set text(size: 15pt)
#show heading.where(level: 2): set text(size: 14pt)
#show heading.where(level: 3): set text(size: 13pt)
// #show link: it => it.body

= 王延泽
中国科学院数学与系统科学研究院
基础数学博士生 预计 2027 年 6 月毕业\
#link("mailto:wyz2016zxc@outlook.com")[Email: wyz2016zxc\@outlook.com] | Phone: 155 3825 5707 |
#link("https://orcid.org/0009-0003-3661-1890")[ORCID: 0009-0003-3661-1890] \
#link("https://keinmal.top")[Home Page: https://keinmal.top] |
#link("https://github.com/hiraethecho")[Github: HiraethEcho]

#section("研究与实践")
#entry(
  [
    - *数学：* 双有理几何与极小模型纲领：Sarkisov 纲领、代数可积叶层化；模空间。
    - *AI 实践：* 本地 PyTorch / libtorch 模型训练小项目；智能体框架搭建。
    - *AI4Math：* AI 生成数学结果的人工验证；研究 harness与 Lean 4 形式化。
    - *工程：* torch (Python & C++); Rust, C, LaTeX; 熟悉 Linux 和 Git；vibe coding 开发个人使用的 CLI / TUI 程序（Rust）
  ],
  [],
)

#section("论文与报告")
#subsection("发表论文")
#entry(
  [
    *Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures*. \
    Yifei Chen, Jihao Liu, and Yanze Wang. _International Mathematics Research Notices, 2026(6): rnag045._ 2026
  ],
  [],
)
#entry(
  [
    *Flop between algebraically integrable foliations on potentially KLT varieties*. \
    Yifei Chen, Jihao Liu, and Yanze Wang. _International Journal of Mathematics, 36(11):2550035._ 2025
  ],
  [],
)
#entry(
  [
    *A Note on the Sarkisov Program*. \
    Yifei Chen and Yanze Wang. _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov, LMS Lecture Note Series, pp. 231–263, Cambridge University Press._ 2025
  ],
  [],
)

#subsection("预印本")
 All AI-generated, human-verified.
#entry(
  [
    *A klt generalized pair with infinitely generated canonical ring*. \
    Jihao Liu and Yanze Wang. _arXiv:2608.03258._ 2026
  ],
  [],
)
#entry(
  [
    *Twelve common flex lines in a general pencil of cubics*. \
    Jihao Liu and Yanze Wang. _arXiv:2607.26396._ 2026
  ],
  [],
)
#entry(
  [
    *A counterexample to the odd-dimensional rank bound for abelian p-group actions*. \
    Jihao Liu and Yanze Wang. _arXiv:2607.04891._ 2026
  ],
  [],
)

#subsection("学术报告")
#entry(
  [
    报告人，《代数可积与三维叶状结构的 Sarkisov 纲领》，西交利物浦大学。
  ],
  [_2026_],
)

#section("项目")
#subsection("编程")
#entry(
  [#link("https://github.com/hiraethecho/suckless")[*suckless*] — 自行 fork 的 dwm / dwmblocks（C），通过补丁手工维护，未经 AI 辅助。],
  [],
)
#entry(
  [#link("https://github.com/hiraethecho/calman")[*Calman*] — 终端任务与事件管理器（CLI ，Rust）。CalDAV 兼容，同步委托 radicale / vdirsyncer / rclone。],
  [],
)
#entry(
  [#link("https://github.com/hiraethecho/markerss")[*Markerss*] — TUI RSS 阅读器（Rust，ratatui）：Markdown 导出、URL 收藏。],
  [],
)
#entry(
  [#link("https://github.com/hiraethecho/lichtung")[*Lichtung*] — Hugo 主题（Go 模板 / SCSS），支撑两个个人站点。],
  [],
)
// #entry([#link("https://github.com/hiraethecho/cutui")[*cutui*] — 简易 TUI 视频编辑器（Rust）。], [])
#entry(
  [#link("https://github.com/hiraethecho/mumble")[*mumble*] — 留言板（JavaScript，Cloudflare Worker），独立页面或嵌入页面。],
  [],
)

#subsection("AI 实践")
#entry(
  [*模型训练：* 本地简单项目实践——pytorch-cpp、llm-from-scratch、build-llm-from-zero、tiny-reasoning-rl-lab 等。],
  [],
)
#entry(
  [#link("https://github.com/hiraethecho/AiKit")[*AiKit*] — 智能体框架：面向编码智能体（pi、opencode、codex、claude code 等）的代理 / skills / 插件集合。],
  [],
)
#entry(
  [*开源项目：* fork 、改进、使用#link("https://github.com/hiraethecho/Rethlas")[Rethlas]（自然语言数学推理）、co-mathematician 等；参与 Lean 4 平台 prove2.me。],
  [],
)
#entry([*参与内测：* agentero、数学研究工作台与论文阅读器（暂时闭源）。], [])

#section("教育背景")
#entry(
  [
    *理学博士*（在读），中国科学院数学与系统科学研究院。\
    _指导教师：_ 陈亦飞 教授。\
    研究方向：双有理几何——Sarkisov 纲领、代数可积叶层化。
  ],
  [],
)
#entry(
  [
    *理学硕士*，中国科学院数学与系统科学研究院。\
    _指导教师：_ 陈亦飞 教授。\
    _学位论文：_《叶层化对的 Sarkisov 纲领》。
  ],
  [],
)
#entry(
  [
    *理学学士*，北京航空航天大学。\
    _学位论文：_《曲线模空间》。\
    本科期间任助教：线性代数、代数几何。
  ],
  [],
)

- 美国大学生数学建模竞赛（MCM/ICM）— 一等奖（Meritorious Winner，两次）
- 北京航空航天大学华罗庚奖学金（两次）
