#!/usr/bin/ruby
require "json"

dir = Dir["./images/*"]

json = {
    count: dir.length,
    baseURL: "https://raw.githubusercontent.com/marek12306/lao-gan-ma/main/images/",
    files: dir.map { |f| File.basename(f) }
}.to_json

File.write("meta.json", json, mode: "w")