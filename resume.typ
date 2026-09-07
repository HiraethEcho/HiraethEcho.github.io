// EN one-page resume — outputs static/resume.pdf
#import "cv-lib.typ": *
#import "cv-data.typ": *

#let t = T_resume("en")

#set document(author: t.name, title: t.name)

#show: init(
  "en",
  name: t.name,
  primary: t.primary,
  secondary: t.secondary,
  compact: true,
)

#resume("en")
