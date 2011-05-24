require "mathn"

def prime? n
  div = n.prime_division
  return true if (div.size == 1 and div[0][1] == 1)
  return false
end

def circulate str
  ary = str.chars.to_a
  c = ary.shift
  ary << c
  ary.to_s
end

def circular_prime? n
  return false if !prime?(n)

  n_str = n.to_s
  str = circulate n_str

  while n_str != str do
    return false if !prime?(str.to_i)
    str = circulate str
  end

  return true
end

count = 0
2.upto(999999) do |n|
  if circular_prime? n then
    count+=1
    p "#{n} is circular prime : count=#{count}"
  end
end

