---
name: sync-style
description: "update or calibrate style.md from actual blog contents. Trigger keywords including sync-style, 更新 style.md, 校准风格, 同步写作风格, 分析文章风格."
---

# Sync Style — 校准 style.md

扫描实际文章，对比 `style.md`，输出写作风格、taxonomy 和目录规则的更新建议。

## 工作流

### 1. 读取 style.md
重点检查：写作类型描述（1-6 节）、taxonomy（7 节）、内容位置规则（8 节）。

### 2. 扫描实际文章
扫描所有博客目录，排除 `draft: true`。对每篇文章提取：
- frontmatter：categories / genres / series / topics / tags
- 实际目录位置
- 句式模式、章节结构、标题风格
- 内部链接和脚注使用
- 内容来源与成熟度

### 3. 聚合比较
按 categories 和目录分组，比较：
- `style.md` 说了但实际少见的模式
- 实际高频但 `style.md` 没写的模式
- taxonomy 中已有但不用的值
- 实际出现但 `style.md` 没收录的 taxonomy 值
- 文件夹分布是否符合规则
- 是否有文章放错目录

### 4. 输出建议

```markdown
## sync-style 建议

### 高优先级
- [ ] `style.md` 某节与实际不符：证据 + 建议改法

### 中优先级
- [ ] 某类文章常见结构需补充：涉及文件和规律

### 低优先级
- [ ] 新增/废弃 taxonomy 值：频率和是否保留
- [ ] 某目录规则可细化

### 文件夹位置异常
- [ ] `path`：当前 X → 建议 Y，理由
```

默认只输出建议，不直接改。用户要求"直接更新"时再编辑。

## 原则

- 一两篇例外不改 `style.md`
- 优先记录稳定模式，非偶然表达
- 目录规则以内容来源和成熟度优先