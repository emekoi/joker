include karax/prelude

proc createDom(): VNode =
  result = buildHtml(tdiv):
    section(class = "section"):
      tdiv(class = "container"):
        h1(class = "title"):
          text "joker"
        h1(class = "subtitle"):
          text "an example of using karax with jester"

setRenderer createDom