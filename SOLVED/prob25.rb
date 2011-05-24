$prev0 = 1
$prev1 = 2
$count = 1
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
  print "#{$count}\t:\t#{n.to_s.size}:\t#{n}\n"
  break if 1000 <= n.to_s.size
end
