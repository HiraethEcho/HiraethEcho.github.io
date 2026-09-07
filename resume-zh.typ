// ZH one-page resume — outputs static/resume-zh.pdf
#import "cv-lib.typ": *
#import "cv-data.typ": *

#let t = T_resume("zh")

#set document(author: t.name, title: t.name)

#show: init(
  "zh",
  name: t.name,
  primary: t.primary,
  secondary: t.secondary,
  compact: true,
)

#resume("zh")
