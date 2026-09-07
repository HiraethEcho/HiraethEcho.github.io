// =============================================================
// cv-lib.typ — shared format for resume.pdf & cv.pdf
//
// Layout (the part that is identical across documents):
//   - A4, two-column header (name/affiliation left, links right)
//   - section headings (bold; no rule under the title)
//   - a divider line AFTER each section (see section-divider)
//   - sub-headings (level 2) for grouped content
//   - small helpers: entry-list, pubs, tight-list
//
// Typography follows the acadennial-cv template
// (~/.local/lib/typst/cache/preview/acadennial-cv/0.1.0):
//   - body: Alegreya (proportional), headings: Liberation Sans
//     (Arial metric-compatible), contact/web info: CodeNewRoman
//     Nerd Font (monospace, like acadennial's Courier New)
//   - justified paragraphs, first-line-indent 0pt, tight leading
//   - links underlined with a light stroke
//   - PDF metadata (author/title) set from the header name
//
// Content lives in cv-data.typ; entry files just
// `import "cv-lib.typ": *` and `#show: init(...)`.
// =============================================================

// ---- fonts ----
// Body uses Alegreya everywhere (the acadennial look); headings use
// Liberation Sans; the monospace CodeNewRoman Nerd Font is reserved
// for the contact block, like acadennial uses Courier New.
#let font-set(lang) = (
  body: if lang == "zh" {
    ("Alegreya", "LXGW Neo XiHei")
  } else {
    ("Alegreya",)
  },
  head: if lang == "zh" {
    ("Liberation Sans", "LXGW Neo XiHei")
  } else {
    ("Liberation Sans",)
  },
  mono: if lang == "zh" {
    ("CodeNewRoman Nerd Font", "LXGW Neo XiHei")
  } else {
    ("CodeNewRoman Nerd Font",)
  },
)

// ---- inline SVG icons (borrowed style from the previous acadennial-cv template) ----
#let github-svg = ```
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61C4.422 18.07 3.633 17.7 3.633 17.7c-1.087-.744.084-.729.084-.729 1.205.084 1.838 1.236 1.838 1.236 1.07 1.835 2.809 1.305 3.495.998.108-.776.417-1.305.76-1.605-2.665-.3-5.466-1.332-5.466-5.93 0-1.31.465-2.38 1.235-3.22-.135-.303-.54-1.523.105-3.176 0 0 1.005-.322 3.3 1.23.96-.267 1.98-.399 3-.405 1.02.006 2.04.138 3 .405 2.28-1.552 3.285-1.23 3.285-1.23.645 1.653.24 2.873.12 3.176.765.84 1.23 1.91 1.23 3.22 0 4.61-2.805 5.625-5.475 5.92.42.36.81 1.096.81 2.22 0 1.606-.015 2.896-.015 3.286 0 .315.21.69.825.57C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12"/></svg>```.text

#let orcid-svg = ```
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.372 0 0 5.372 0 12s5.372 12 12 12 12-5.372 12-12S18.628 0 12 0zM7.375 17.156H5.281V6.844h2.094v10.312zm4.312 0H9.594V6.844h2.094c2.904 0 4.625 1.749 4.625 4.531 0 2.781-1.721 4.531-4.626 4.531zm0-2.55c1.545 0 2.531-.768 2.531-2.062 0-1.276-.966-2.063-2.531-2.063h-2.062v4.125h2.062z"/></svg>```.text

// Icon defaults follow acadennial-cv: dark gray, 0.95em, baseline 20%.
#let github-icon(fill: rgb("#333333"), height: 0.95em, baseline: 20%) = {
  box(height: height, baseline: baseline, image(bytes(github-svg.replace("currentColor", fill.to-hex()))))
}

#let orcid-icon(fill: rgb("#333333"), height: 0.95em, baseline: 20%) = {
  box(height: height, baseline: baseline, image(bytes(orcid-svg.replace("currentColor", fill.to-hex()))))
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

  // compact = larger, airier spacing for the 1-page resume (fills the page)
  let m = if compact { (x: 1.6cm, y: 1.15cm) } else { (x: 1.7cm, y: 1.45cm) }
  let base-size = 10pt
  // tight leading, like acadennial-cv; a bit looser for CJK to stay readable
  let base-leading = if lang == "zh" {
    if compact { 0.72em } else { 0.65em }
  } else {
    if compact { 0.6em } else { 0.55em }
  }
  let par-spacing = if compact { 0.5em } else { 0.65em }
  let head-size = if compact { 16pt } else { 14pt }
  let subhead-size = if compact { 10.5pt } else { 10pt }
  let name-size = if compact { 23pt } else { 22pt }
  let sec-above = if compact { 1.1em } else { 0.8em }
  let sec-below = if compact { 0.45em } else { 0.3em }
  let sub-above = if compact { 0.9em } else { 0.65em }
  let sub-below = if compact { 0.35em } else { 0.28em }
  let contact-size = if compact { 9.8pt } else { 9.5pt }

  // PDF metadata (author/title) is set in the entry files, e.g.
  // `#set document(title: t.name, author: t.name)` — putting it inside
  // this show-rule closure breaks Typst 0.15 (`set document` in a rule).

  body => {
    // page & text basics
    set page(
      paper: "a4",
      margin: m,
      numbering: none,
      footer: if compact {
        none
      } else {
        context {
          align(center)[
            #text(size: 0.85em, fill: luma(55%))[#counter(page).display("1")]
          ]
        }
      },
    )
    // acadennial typography: proportional body, no ligatures
    set text(font: f.body, size: base-size, lang: text-lang, ligatures: false)
    set par(leading: base-leading, spacing: par-spacing, justify: true, first-line-indent: 0pt)
    set block(above: 0.3em, below: 0.3em)
    set align(left)

    // subtle underline for links (as in the acadennial template)
    show link: it => underline(stroke: 0.5pt + luma(200), offset: 2pt, it)

    // section headings (level-1 `= ...`) — big & bold, no rule under the title
    show heading.where(level: 1): it => block(
      above: sec-above,
      below: sec-below,
    )[
      #text(font: f.head, size: head-size, weight: "bold")[#it.body]
    ]

    // sub-headings (level-2 `== ...`) — smaller, bold, gray
    show heading.where(level: 2): it => block(
      above: sub-above,
      below: sub-below,
    )[
      #text(font: f.head, size: subhead-size, weight: "bold", fill: rgb("#666666"))[#it.body]
    ]

    // keep headings with the following block
    show heading: set block(breakable: false)

    // header: left = name/affiliation, right = contact links (monospace)
    grid(
      columns: (1fr, auto),
      column-gutter: 1.6em,
      align(left)[
        #text(font: f.head, size: name-size, weight: "bold")[#name]
        #v(0.18em)
        #text(font: f.body, size: contact-size)[#primary]
      ],
      align(right)[
        #text(font: f.mono, size: contact-size)[#secondary]
      ],
    )
    v(if compact { 0.5em } else { 0.6em })
    line(length: 100%, stroke: 0.8pt + black)
    v(if compact { 0.45em } else { 0.5em })

    body
  }
}

// ---- divider placed AFTER a section's content (before next heading) ----
#let section-divider(compact: false) = {
  v(if compact { 0.85em } else { 0.5em })
  line(length: 100%, stroke: 0.5pt + rgb("#bdbdbd"))
  v(if compact { 0.7em } else { 0.4em })
}

// ---- label/body rows (education, projects) ----
// entries: array of (at: content, body: content)
#let entry-list(entries, compact: false) = {
  for e in entries {
    grid(
      columns: (auto, 1fr),
      column-gutter: 1.1em,
      row-gutter: if compact { 0.35em } else { 0.25em },
      align: (left, left),
      [#text(size: if compact { 10pt } else { 9pt }, weight: "semibold")[#e.at]],
      [#e.body],
    )
    v(if compact { 0.85em } else { 0.5em })
  }
}

// ---- numbered publication references ----
// items: array of content (each one full citation), renders 1. 2. 3. ...
#let pubs(items, compact: false) = {
  set par(leading: if compact { 0.55em } else { 0.45em })
  for (i, it) in items.enumerate() {
    block(
      above: if compact { 0.42em } else { 0.22em },
      below: if compact { 0.42em } else { 0.22em },
      [#text(weight: "bold")[(#(i + 1))] #it]
    )
  }
}

// strip scheme + trailing slash for display, e.g. url-short("https://a/b") => "a/b"
#let url-short(u) = u.replace("https://", "").replace("http://", "")

// ---- compact bullet list with tight spacing ----
#let tight-list(items, compact: false) = {
  set list(spacing: if compact { 0.52em } else { 0.3em }, marker: [·])
  list(..items)
}