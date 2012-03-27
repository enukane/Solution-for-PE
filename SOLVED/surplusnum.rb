def find_true_divisor num
  div = []
  1.upto(num) do |i|
    div << i if num % i == 0 and num != i
  end
  div
end

File.open("surplusnum.txt", "w+") do |f|
  0.upto(28213-1) do |n|
    f.puts n if n < (find_true_divisor n).inject(0){|acc, i| acc + i}
  end
end
