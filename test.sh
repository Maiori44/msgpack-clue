#!/usr/bin/sh
clue msgpack.clue --target=lua54
echo "Testing on 5.4..."
lua tests.lua
clue msgpack.clue --target=luajit
echo "Testing on Love2d..."
echo "function love.conf(t) t.modules.window = false end" >> conf.lua
love tests.lua
rm msgpack.lua
rm conf.lua