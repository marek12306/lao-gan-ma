#!/usr/bin/ruby

Dir.chdir("./images") do
    i = 0
    Dir["./*"].sort_by{ |f| File.mtime(f) }.each do |file|
        File.rename(file, "#{i}#{File.extname(file)}")
        i += 1
    end
end