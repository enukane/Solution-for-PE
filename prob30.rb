sum = 0
1.upto(9999999) do |n|
  if n == n.to_s.chars.to_a.inject(0){|acc, i| acc + (i.to_i**5)} then
    p n
    p "sum = #{sum += n}"
  end
end
p sum
