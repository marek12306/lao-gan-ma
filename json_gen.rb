#!/usr/bin/ruby
require "json"

dir = Dir["./images/*"]

json = {
    count: dir.length,
    files: dir.map { |f| File.basename(f) }
}.to_json

File.write("meta.json", json, mode: "w")