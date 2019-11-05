
File.open("text.txt", "r+"){|f|
    f.each_with_index{|line, index|
        line.gsub!(/━+|-+/){|c| ";" + c}
        line.gsub!(/。/, "。[l]")
        line.gsub!(/。$/, "。[p]")
        line.gsub!(/」/, "」[p]")
        puts line
    }
}
