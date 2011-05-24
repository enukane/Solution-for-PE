$prev0 = 1
$prev1 = 2

$limit = 4000000
$count = 1

sum = 0

def fib
  ret = -1

  if $count > 2 then
    ret = $prev0 + $prev1
    $prev0 = $prev1
    $prev1 = ret
  end

  ret =  $prev0 if $count == 1
  ret =  $prev1 if $count == 2

   $count = $count + 1

  return ret
end

while true do 
  n = fib()
  break if n > $limit
  next if ( n % 2 ) == 1
  sum = sum + n

  p "#{n} => sum : #{sum}"
end

p "ans=#{sum}"

