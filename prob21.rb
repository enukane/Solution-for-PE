amicablenum = []
$limit = 10000

def find_true_divisor num
  div = []
  1.upto(num) do |i|
    div << i if num % i == 0 and num != i
  end
  div
end

def sum_true_divisor num
  div = find_true_divisor num
  sum = div.inject(0){|acc, i| acc + i}
  return sum
end

def amicable? me, you
  return false if me == you
  sum_you = sum_true_divisor you
  me == sum_you
end

1.upto($limit-1) do |num|
  if amicablenum.include? num then
    p "\talready amicable \n"
    next
  end

  you = sum_true_divisor num
  if amicable? num, you then
    amicablenum << num if num < 10000
    amicablenum << you if num < 10000
    p "added #{num} <=> #{you}"
  end
end

p amicablenum.inject(0){|acc, item| acc + item}
