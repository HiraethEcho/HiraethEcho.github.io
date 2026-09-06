# refactor

## outline

I want a short resume.pdf (in one page) and a detailed cv.pdf (2 or 3 pages), in chinese and english. they should be in /static
The `about` has similar content with cv.

## resume

it should including:

- basic:
  - contact: name, school, email, phone number, github, orcid, this homepage
  - experience: education(数学博士生（双有理几何方向）预计 2027 年 6 月毕业), honor, talk
  - interests: AI4math etc
- Math:
  - published papers in standard reference formart
  - rethlas: I fork this harness and make some modification
  - mathran: contributer for a microsoft ai4math project
- project:
  - suckless: fork of componets of desktop environment (Xorg) on Linux (not by ai)
  - lichtung: a hugo theme (by chatting with ai)
  - calman: a cli task and event manager, based on iCalender (vibe coding)
  - markerss: a tui rss reader (vibe coding)
  - AiKit: a collection of tools (skills, plugins) for coding agent (especially for pi), and scripts for quick deploy (for ai)
- skills: birational geometry; linux, git, C, latex; languages

## cv

just detailed version of resume. add more explaination.

add more items:

- education: add thesis, advisor
- interests: learning torch, knowledge about traning/tune llm, building harness, agent for ai4math etc
- math
  including published papers, thesis, preprints. add abstracts
- project
  - mumble: a simple page as a message board, as standalone website or embeded into other page, using cloudflare worker
  - cutui: a simple tui video editor

## content

### \_index.md

short information of myself, and links to blog, about, resume, cv.

### paper

current is ok

### projects

add `AiKit`.
add `rethlas`.

add documents for each project, play a role like `readme`, show usage etc

## reference

here are path of repos on this computer. use subagent to see what they actually are if necessary

- ~/AiKit
- ~/WorkSpace/{rethlas,markerss,calman,cutui}

or check online, in github.com/hiraetheco

## misc

typst 现在格式和内容太紧凑了，我希望两个分离。格式用个 xx-lib.typ 之类的，然后用 import 导入resume 和 cv.
格式简单一些。现在格式的头部（左右两部分，右边是链接）可以保留

多语言部分，header 里的切换语言 item，加上国旗的 icon
