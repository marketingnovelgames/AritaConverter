
File.open("text.txt", "r+"){|f|
    File.open("convert.txt", "w+"){|w|
        f.each_with_index{|line, index|
            line.gsub!(/━+|-+/){|c| ";" + c}
            line.gsub!(/。/, "。[l]")
            line.gsub!(/。$/, "。[p]")
            line.gsub!(/」/, "」[p]")
            w.puts(line)
        }
    }
}
