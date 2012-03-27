require "mathn"

$trinum = 0
$num = 0

$init = (1..500).inject(1) do |acc, item| acc *item end

def next_trinum
  $num += 1
  $trinum += $num
  return $trinum
end

def find_divisor target
  div = target.prime_division
  div_num = div.inject(1) do |acc, item|
    acc * (item[1] + 1) if item 
  end
  return div_num
end

loop do 
  trinum = next_trinum
  print "#{trinum}\t:"
  n = find_divisor(trinum)
  if n < 501 then
    print "NO #{n}\n"
    next
  end
  print "YES #{n} : has more than 501 divisor \n"
  break
end

