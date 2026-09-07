// ZH detailed CV — outputs static/cv-zh.pdf
#import "cv-lib.typ": *
#import "cv-data.typ": *

#let t = T_cv("zh")

#set document(author: t.name, title: t.name)

#show: init(
  "zh",
  name: t.name,
  primary: t.primary,
  secondary: t.secondary,
)

#cv("zh")
