import jester, asyncdispatch, strutils

const
  html = """
  <!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>$1</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css">
      <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
    </head>
    <body id="body">
    <div id="ROOT" />
    <script type="text/javascript" src="views/$2.js"></script>
    </body>
  </html>
"""

routes:
  get "/":
    resp html % ["joker", "main.nim"]

runForever()