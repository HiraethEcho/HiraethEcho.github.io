---
title: Mermaid 与 KaTeX 示例
description: 验证 Mermaid 图表与 KaTeX 行内、块级公式的 Markdown 写法。
---

此页用于检查图表和数学公式的渲染，不会出现在栏目导航中。

## Mermaid

```mermaid
flowchart LR
    A[Markdown] --> B[Hugo]
    B --> C[浏览器渲染]
```

## KaTeX

行内公式：\(f(x) = \alpha + x_1\)。

块级公式：

\[
\frac{a_1}{b_2} = \sqrt{c}
\]

## 引用与提示框

普通引用仍按 Markdown blockquote 显示：

> 这是一段普通引用。

Lichtung 风格的提示框可使用 alert 标记：

> [!NOTE]
> 这里是补充说明。

> [!TIP]+ 点击展开
> 这里是可折叠的建议内容。
