// EN detailed CV — outputs static/cv.pdf
#import "cv-lib.typ": *
#import "cv-data.typ": *

#let t = T_cv("en")

#set document(author: t.name, title: t.name)

#show: init(
  "en",
  name: t.name,
  primary: t.primary,
  secondary: t.secondary,
)

#cv("en")
