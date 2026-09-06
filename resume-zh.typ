// ZH one-page resume — outputs static/resume-zh.pdf
#import "format-lib.typ": *
#import "resume-content.typ": *

#let t = T("zh")

#show: init(
  "zh",
  name: t.name,
  primary: t.primary,
  secondary: t.secondary,
  compact: true,
)

#resume("zh")