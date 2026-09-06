// =============================================================
// format-lib.typ — minimal shared format for resume.pdf & cv.pdf
//
// Layout (the part that is identical across documents):
//   - A4, two-column header (name/affiliation left, links right)
//   - section headings (bold + thin rule)
//   - small helpers: entry-list (label/body rows), pubs (numbered refs)
//
// Content lives in resume-content.typ / cv-data.typ; entry files
// just `import "format-lib.typ": *` and `#show: init(...)`.
// =============================================================

// ---- fonts ----
#let font-set(lang) = if lang == "zh" {
  (body: ("Alegreya", "LXGW Neo XiHei"), head: ("Liberation Sans", "LXGW Neo XiHei"))
} else {
  (body: ("Alegreya",), head: ("Liberation Sans",))
}

// ---- document init: page setup + header + heading style ----
// Usage: #show: init("en", name: ..., primary: ..., secondary: ...)
#let init(
  lang,
  name: [],
  primary: [],
  secondary: [],
  compact: false,
) = {
  let f = font-set(lang)
  let text-lang = if lang == "zh" { "zh" } else { "en" }

  // compact = tighter spacing for the 1-page resume
  let m = if compact { (x: 1.5cm, y: 0.85cm) } else { (x: 1.7cm, y: 1.5cm) }
  let base-size = if compact { 9.5pt } else { 10pt }
  let base-leading = if compact { 0.55em } else { 0.7em }
  let head-size = if compact { 11pt } else { 12.5pt }
  let name-size = if compact { 17pt } else { 22pt }
  let sec-above = if compact { 0.7em } else { 1em }
  let sec-below = if compact { 0.28em } else { 0.45em }
  let contact-size = if compact { 8.8pt } else { 9.5pt }

  body => {
    // page & text basics
    set page(
      paper: "a4",
      margin: m,
      numbering: none,
    )
    set text(font: f.body, size: base-size, lang: text-lang)
    set par(leading: base-leading, justify: true)
    set block(above: 0.3em, below: 0.3em)

    // section headings (level-1 `= ...`)
    show heading.where(level: 1): it => block(
      above: sec-above,
      below: sec-below,
    )[
      #text(font: f.head, size: head-size, weight: "bold")[#it.body]
      #v(if compact { 0.2em } else { 0.3em })
      #line(length: 100%, stroke: 0.6pt + rgb("#9a9a9a"))
    ]

    // keep headings with the following block
    show heading: set block(breakable: false)

    // header: left = name/affiliation, right = contact links
    grid(
      columns: (1fr, auto),
      column-gutter: 1.6em,
      align(left)[
        #text(font: f.head, size: name-size, weight: "bold")[#name]
        #v(0.18em)
        #text(font: f.body, size: contact-size)[#primary]
      ],
      align(right)[
        #text(font: f.body, size: contact-size)[#secondary]
      ],
    )
    v(if compact { 0.35em } else { 0.6em })
    line(length: 100%, stroke: 0.8pt + black)
    v(if compact { 0.3em } else { 0.5em })

    body
  }
}

// ---- label/body rows (education, projects) ----
// entries: array of (at: content, body: content)
#let entry-list(entries) = {
  for e in entries {
    grid(
      columns: (auto, 1fr),
      column-gutter: 1.1em,
      row-gutter: 0.18em,
      [#text(size: 9pt, weight: "semibold")[#e.at]],
      [#e.body],
    )
    v(0.32em)
  }
}

// ---- numbered publication references ----
// items: array of content (each one full citation), renders 1. 2. 3. ...
#let pubs(items) = {
  set par(leading: 0.3em)
  for (i, it) in items.enumerate() {
    block(
      above: 0.14em,
      below: 0.14em,
      [#text(weight: "bold")[(#(i + 1))] #it]
    )
  }
}

// strip scheme + trailing slash for display, e.g. url-short("https://a/b") => "a/b"
#let url-short(u) = u.replace("https://", "").replace("http://", "")

// ---- compact bullet list with tight spacing ----
#let tight-list(items) = {
  set list(spacing: 0.18em, marker: [·])
  list(..items)
}