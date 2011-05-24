$primes = []
$limit = 2000000
$num = 1

def is_prime num
  0.upto($primes.length-1) do |index|
    return false if num % $primes[index] == 0
  end
  return true
end

while true do
  $num = $num + 1
  if $num == 2 then
    $primes << 2
    next
  end

  if $num % 2 == 0 then
    next
  end

  if $num > $limit then
    break
  end

  if is_prime $num then
    p "ADDED : #{$num}"
    $primes << $num
  end
end

p $primes.inject(0) {|acc, item| acc + item}
