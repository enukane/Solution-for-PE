data = []
max_len = 0
File.open("prob15.dat") do |f|
  while str = f.gets do
    data << str.strip.split("\s").map {|str| str.to_i}
  end
end
p data

def walk pos, list, next_list 
  next_num = next_list[pos] > next_list[pos+1] ? next_list[pos] : next_list[pos+1]
  next_pos = next_list[pos] > next_list[pos+1] ? pos : pos +1
  return next_num, next_pos 
end

walk_path =[] << 75
pos = 0

0.upto(data.size-2) do |cur_line|
  next_num, next_pos = walk pos, data[cur_line], data[cur_line+1]
  p "next : #{next_num}"
  walk_path << next_num
  pos = next_pos
end

sum = walk_path.inject(0) {|acc, item| acc + item}

p "sum is #{sum}"
