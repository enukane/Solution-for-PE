nums = []
File.open("prob13.dat") do |f|
  while line = f.gets
    nums << line.to_i
    p nums
  end
end

sum = nums.inject(0) { |acc, item| acc + item}

p sum
