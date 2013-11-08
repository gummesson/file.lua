package = "file"
version = "dev-1"

source = {
  url = "git://github.com/gummesson/file.lua.git"
}

description = {
  summary = "A minimal library for working with files in Lua.",
  homepage = "http://ellengummesson.com/file.lua/",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    file = "src/file.lua"
  }
}
