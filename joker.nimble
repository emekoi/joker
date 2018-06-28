# Package

version       = "0.1.0"
author        = "emekoi"
description   = "an example of using karax and jester"
license       = "MIT"
srcDir        = "src"
binDir        = "bin"
bin           = @["joker"]

# Dependencies

requires "nim >= 0.18.0"
requires "karax >= 0.2.0"
requires "jester >= 0.2.0"

# Tasks

import strutils
import ospaths

task build_js, "build all js files":
  if not dirExists("public/views"):
    mkDir("public/views")

  for file in listFiles "src/jokerpkg/views/":
    let filename = file.tailDir().tailDir()
    # selfExec "js --o:public/$2.js $1" % [file, filename]
    exec "nimble js --o:public/$2.js $1" % [file, filename]

after build:
  build_js_task()