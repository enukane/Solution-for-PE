File.open("names.txt") do |f|
  p f.read.strip.split(",").map{|item| item.gsub("\"", "")}.sort.map{|name| name.chars.to_a.inject(0){|acc, c| acc + c[0].to_i - "A"[0].to_i + 1}}.inject([0,0]){|acc, p|  [acc[0]+1, acc[1] + ((acc[0]+1) * p)]} 
end

