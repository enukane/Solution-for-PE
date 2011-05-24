words = nil
File.open("words.txt") do |f|
  words = f.read.strip.split(",").map do |item|
    item.gsub("\"", "")
  end
end
p words
words.map! do |item|
  item.chars.to_a.inject(0) do |acc, c|
    acc + c[0].to_i - "A"[0].to_i + 1
  end
end

words.sort!

$count = 0
$current_tri = 0

def next_tri_num
  $current_tri += 1
  return   (0.5 * $current_tri * ($current_tri + 1)).to_i
end

idx = 0
limit = words.size
loop do

  tri_num = next_tri_num

  print "cheching for trinum\t : #{tri_num}\n"

  while idx < limit && words[idx] < tri_num do
    idx += 1
  end

  while idx < limit && words[idx] == tri_num do
    idx+=1
    $count += 1
    print "\t count : #{$count}\n"
  end 

  break if idx >= words.size
end

p "countetd trinum as #{$count}"
