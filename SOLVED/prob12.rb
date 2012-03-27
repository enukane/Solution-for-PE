
$trinum = 0
$num = 0

def find_divisor target
  ary = []
  1.upto(target) do |n|
    ary << n if target % n == 0
  end
  return ary
end

def trinum? target
  num = 0
  window = 1
  loop do
    num += window
    window += 1
    return false if target < num
    return true if target == num
  end
end

loop do 
  $num += 1
  next if find_divisor($num).length < 501
  p "#{$num} has more than 500 divisor"
  break if trinum? $num
end

p "#{num} is trinum and has more than 500 divisor"

#loop do
#  $num += 1
#  $trinum = $trinum + $num
#  if 501 <= find_divisor($trinum).length then
#    p "First trinum with divisor >= 501 is #{$trinum}"
#    break
#  end
#end
