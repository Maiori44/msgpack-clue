#!/usr/bin/sh
clue msgpack.clue --target=lua5.4
lua tests.lua
rm msgpack.lua