def palindromic? str
  return str == str.reverse
end

sum = 0

1.upto(1000000-1) do |n|
  if palindromic? n.to_s and palindromic? n.to_s(2)
    "#{n} is palindromic : #{n.to_s(2)}"
end

p sum
