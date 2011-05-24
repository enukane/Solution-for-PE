def fact num
  return 1 if num <= 1
  return num * fact(num - 1)
end

data = fact 100
p "fact 100 : #{data}"

ary = data.to_s.chars.to_a

sum = ary.inject(0) { |acc, item|
  acc + item.to_i
}

p "sum of #{ary} => #{sum}"
