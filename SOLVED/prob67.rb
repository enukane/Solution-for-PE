data = []
max_len = 0
File.open("prob67.dat") do |f|
  while str = f.gets do
    data << str.strip.split("\s").map {|str| str.to_i}
  end
end


acc_data = []
data.each do |ary|
  acc_data << ary.dup
end

data.each_index do |idx|
  break if idx == data.size-1

  ary = acc_data[idx]
  next_ary = data[idx+1]
  target_ary = acc_data[idx+1]

  0.upto(ary.size-1) do |i|
    cur = ary[i]
    next0 = next_ary[i] + cur
    next1 = next_ary[i+1] + cur
    
    target_ary[i]   = next0 if target_ary[i]  < next0
    target_ary[i+1] = next1 if target_ary[i+1]< next1
   # p "[#{i}] : #{target_ary}"
  end
end

p acc_data[-1].inject(0){|acc, item| item > acc ? item : acc }
