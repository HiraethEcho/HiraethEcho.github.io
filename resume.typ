// EN one-page resume — outputs static/resume.pdf
#import "format-lib.typ": *
#import "resume-content.typ": *

#let t = T("en")

#show: init(
  "en",
  name: t.name,
  primary: t.primary,
  secondary: t.secondary,
  compact: true,
)

#resume("en")