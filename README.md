# file.lua

Basic file functions for Lua.

## Why?

Because learning a new language is still kind of fun.

## API

### file.exists

~~~ lua
file.exists(path)
~~~

Determines if the file's `path` exists. Returns either `true` or `false`.

#### Example

~~~ lua
file.exists('test.txt')
~~~

### file.read

~~~ lua
file.read(path[, mode])
~~~

Returns the content of the file by reading the given `path` and `mode`.

#### Example

~~~ lua
file.read('test.txt')
~~~

### file.write

~~~ lua
file.write(path, content[, mode])
~~~

Writes to the file with the given `path`, `content` and `mode`.

#### Example

~~~ lua
file.write('test.txt', 'Hello world!')
~~~

### file.copy

~~~ lua
file.copy(src, dest)
~~~

Copies the file by reading the `src` and writing it to the `dest`.

#### Example

~~~ lua
file.copy('test.txt', 'test-copy.txt')
~~~

### file.move

~~~ lua
file.move(src, dest)
~~~

Moves the file from `src` to the `dest`.

#### Example

~~~ lua
file.move('test-copy.txt', 'test/test.txt')
~~~

### file.remove

~~~ lua
file.remove(path)
~~~

Remove the file from the given `path`.

#### Example

~~~ lua
file.remove('test.txt')
~~~

## License

The MIT License (MIT)

Copyright (c) 2013 Ellen Gummesson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
