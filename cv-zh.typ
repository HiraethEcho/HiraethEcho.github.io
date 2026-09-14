// ZH detailed CV — cv-soft-and-hard template, modeled on its main.typ.
// Content written inline; content.typ is the reference source of truth.
#import "@preview/cv-soft-and-hard:0.1.0": styling, section, entry, subsection, rust, cplain, hugo, javascript

#set document(author: "王延泽", title: "王延泽 - 履历")
#show: styling
#set text(font: ("Liberation Serif", "LXGW Neo XiHei"))

#align(center)[
  = 王延泽 - 履历\
  基础数学博士生 预计 2027 年 6 月毕业 · 中国科学院数学与系统科学研究院\
  #link("mailto:wangyanze@amss.ac.cn", "wangyanze@amss.ac.cn") |
  155 3825 5707 |
  #link("https://keinmal.top", "keinmal.top") |
  #link("https://github.com/hiraethecho", "github.com/hiraethecho") |
  #link("https://orcid.org/0009-0003-3661-1890", "ORCID: 0009-0003-3661-1890")
]

#section("简介")
基础数学博士生，研究方向为双有理几何（极小模型纲领、Sarkisov 纲领、代数可积叶层化）；同时从事 AI4Math 实践：AI 生成数学结果的人工验证、研究 harness 与 Lean 4 形式化。

#section("经历")
#entry([*助教*（_北京航空航天大学_）— 线性代数、代数几何], [_本科期间_])
#entry([*学术报告*（_西交利物浦大学_）— 《代数可积与三维叶状结构的 Sarkisov 纲领》], [_2026_])

#section("教育背景")
#entry(
  [
    *博士*\
    理学博士（在读），中国科学院数学与系统科学研究院（中国科学院大学），预计 2027 年 6 月毕业。\
    _指导教师：_ 陈亦飞 教授。\
    研究方向：双有理几何——Sarkisov 纲领、代数可积叶层化。
  ],
  [],
)
#entry(
  [
    *硕士*\
    理学硕士，中国科学院数学与系统科学研究院（中国科学院大学）。\
    _指导教师：_ 陈亦飞 教授。\
    _学位论文：_《叶层化对的 Sarkisov 纲领》。
  ],
  [],
)
#entry(
  [
    *学士*\
    理学学士，北京航空航天大学。\
    _学位论文：_《曲线模空间》。
  ],
  [],
)

#section("学位论文")
#entry(
  [
    *硕士：* 《叶层化对的 Sarkisov 纲领》
  ],
  [],
  description: [
    极小模型纲领在每一固定的双有理等价类中寻找好代表元，它们分为极小模型与 Mori 纤维空间两类。本文介绍 Sarkisov 纲领的三种方法，并尝试建立叶层化对的 Sarkisov 纲领：通过将 F-dlt 叶层化对约化为 klt 对，得到叶层化 Mori 纤维空间之间双有理映射的弱分解。
  ],
)
#entry(
  [
    *学士：* 《曲线模空间》
  ],
  [],
  description: [
    本文借助几何不变量理论（GIT）与叠理论构造曲线模空间及其紧化：介绍光滑曲线与 DM 稳定曲线，给出范畴论、叠理论、Hilbert 概形与 GIT 等工具，构造两类曲线模空间，最后提出进一步问题并讨论其它模空间。
  ],
)

#section("技能")
#table(
  align: left,
  columns: (auto, 1fr),
  stroke: none,
  row-gutter: 0pt,
  column-gutter: 5pt,
  inset: (left: 0pt, top: 2pt),
  text("数学", weight: 600),
  [双有理几何、极小模型纲领、Sarkisov 纲领、代数可积叶层化、模空间],
  text("AI 实践", weight: 600),
  [本地 PyTorch / libtorch 小项目、智能体框架搭建],
  text("AI4Math", weight: 600),
  [AI 生成数学结果的人工验证、研究 harness、Lean 4 形式化],
  text("工程", weight: 600),
  [torch (Python & C++)、Rust、C、LaTeX、Linux、Git；CLI / TUI 程序以 vibe coding 开发（Rust）],
)


#section("项目")
#subsection("编程")
#entry([#link("https://github.com/hiraethecho/suckless")[*suckless*] #cplain — 自行 fork 的 dwm / dwmblocks（X11 动态平铺窗口管理器，C），通过补丁手工维护，未经 AI 辅助。], [])
#entry([#link("https://github.com/hiraethecho/calman")[*Calman*] #rust — 终端任务与事件管理器（CLI + TUI，Rust）。JSONL / ICS 存储，兼容 CalDAV，同步委托 git / vdirsyncer / rclone。], [])
#entry([#link("https://github.com/hiraethecho/markerss")[*Markerss*] #rust — TUI RSS 阅读器（Rust，ratatui + feed-rs）：Markdown 导出、仅存 URL 收藏。], [])
#entry([#link("https://github.com/hiraethecho/lichtung")[*Lichtung*] #hugo — Hugo 主题（Go 模板 / SCSS），以对话式 AI 辅助开发完成，支撑两个个人站点。], [])
#entry([#link("https://github.com/hiraethecho/mumble")[*mumble*] #javascript — 留言板（JavaScript，Cloudflare Worker），可独立部署或嵌入页面。], [])

#subsection("AI 实践")
#entry([*模型训练：* 本地简单项目实践——pytorch-cpp、llm-from-scratch、build-llm-from-zero、tiny-reasoning-rl-lab 等。], [])
#entry([#link("https://github.com/hiraethecho/AiKit")[*AiKit*] — 智能体框架：面向编码智能体（pi、opencode、codex、claude code 等）的代理 / skills / 插件集合，含 pi 扩展（rtk、cave、toon、doc、role）与快速部署脚本。], [])
#entry([*开源项目：* fork、改进、使用#link("https://github.com/hiraethecho/Rethlas")[Rethlas]（自然语言数学推理）、co-mathematician 等；参与 Lean 4 平台 prove2.me。], [])
#entry([*项目内测：* agentero、数学研究工作台与论文阅读器（暂时闭源）。], [])

#section("发表论文")
#entry(
  [
    *Sarkisov Program for Algebraically Integrable Adjoint Foliated Structures*. \
    Yifei Chen, Jihao Liu, and Yanze Wang. _International Mathematics Research Notices, 2026(6): rnag045._
  ],
  [_2026_],
  description: [
    借助伴随叶层化结构的极小模型纲领理论，我们建立 klt 簇上代数可积叶层化的 Sarkisov 纲领：此类结构的任意两个 Mori 纤维空间由一列 Sarkisov 链环连接。结合 R. Mascharak 的结果，我们建立具有温和奇点的至多三维叶层化的 Sarkisov 纲领；其对数版本与伴随叶层化版本亦被建立。
  ],
)
#entry(
  [
    *Flop between algebraically integrable foliations on potentially KLT varieties*. \
    Yifei Chen, Jihao Liu, and Yanze Wang. _International Journal of Mathematics, 36(11):2550035._
  ],
  [_2025_],
  description: [
    我们证明：对潜 klt 簇上 lc 代数可积叶层化三元组的任意两个极小模型，存在由一列 flop 连接的小双有理模型。特别地，ℚ-阶乘 klt 簇上 lc 代数可积叶层化三元组的任意两个极小模型由一列 flop 连接。在假设广义叶层化四元组极小模型纲领成立的前提下，我们还讨论三维簇上可能非代数可积叶层化的极小模型之间的联系。
  ],
)
#entry(
  [
    *A Note on the Sarkisov Program*. \
    Yifei Chen and Yanze Wang. _Higher Dimensional Algebraic Geometry: A Volume in Honor of V. V. Shokurov, LMS Lecture Note Series, pp. 231–263, Cambridge University Press._
  ],
  [_2025_],
  description: [
    本文介绍 Sarkisov 纲领的三种方法：该纲领将对数 Mori 纤维空间之间的双有理映射分解为初等 Sarkisov 链环。
  ],
)

#section("预印本")
#entry(
  [
    *A klt generalized pair with infinitely generated canonical ring* (AI-generated, human-verified). \
    Jihao Liu and Yanze Wang. _arXiv:2608.03258._
  ],
  [_2026_],
  description: [
    我们构造一个射影 klt 广义对 (X, B, M)，其广义对数典范环 R(X, K_X+B+M) 无限生成。这给出首个 −K_X nef 且反典范环 R(X, −K_X) 非有限生成的 klt 簇 X 的例子。
  ],
)
#entry(
  [
    *Twelve common flex lines in a general pencil of cubics* (AI-generated, human-verified). \
    Jihao Liu and Yanze Wang. _arXiv:2607.26396._
  ],
  [_2026_],
  description: [
    我们证明 ℂ 上一般平面三次曲线束恰有 12 条公共拐线，回答 Ciliberto、Miranda 与 Roe 的一个问题。
  ],
)
#entry(
  [
    *A counterexample to the odd-dimensional rank bound for abelian p-group actions* (AI-generated, human-verified). \
    Jihao Liu and Yanze Wang. _arXiv:2607.04891._
  ],
  [_2026_],
  description: [
    我们给出 Moraga 所猜测的、光滑 Calabi-Yau 簇上忠实阿贝尔 p-群作用之秩界的奇维推广的反例。
  ],
)

#section("荣誉")
#entry(
  [美国大学生数学建模竞赛（MCM/ICM）— 一等奖（Meritorious Winner，两次）],
  [],
)
#entry(
  [北京航空航天大学华罗庚奖学金（两次）],
  [],
)