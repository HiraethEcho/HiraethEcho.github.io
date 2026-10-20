---
name: meblog
description: Route blog tasks to sub-skills. Match triggers → dispatch. list subskills if no match.
---

# Blog Router

Match user intent → read matching skill file → execute its instructions.

| Trigger keywords | Read file | Skill |
|-----------------|-----------|-------|
| 反驳, 批判, 挑战, 辩论, devil's advocate, 论证检验, 查漏补缺, 拆解, 挑毛病 | `adversary.md` | adversary |
| 选题, brainstorm, 找灵感, 有什么可写的, idea, topic | `draftout.md` | draftout |
| 润色, 校对, 修改病句, 错别字, 标点, proofread, polish | `polish.md` | polish |
| suggest-meta, 推荐 frontmatter, taxonomy, 文件名, 目录 | `suggest-meta.md` | suggest-meta |
| sync-style, 更新 style.md, 校准风格, 同步写作风格 | `sync-style.md` | sync-style |

## Usage

1. Match user request to trigger keywords
2. `read_file` the corresponding file
3. Follow that skill's instructions
4. Multiple matches → ask. No match → list skills.

Explicit skill name in request → route directly.

**Composition**: `polish` → `suggest-meta` after finishing (update frontmatter).
