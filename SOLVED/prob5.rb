$srcmax = 2520 
$target = 0

def is_dividable_by_all num
  20.downto(11) do |src|
    return false if num % src != 0 
  end
  return true
end

while true do 
  $target = $target + $srcmax
  print "\nchecking #{$target} : "
  if is_dividable_by_all $target then
    print " OK \n!"
    exit
  end
end
