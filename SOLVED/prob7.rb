$primes = Array.new(10001);
$count = 0
$limit = 10001
$num = 1

def check_primes num
  0.upto($count-1) do |index|
    return false if num % $primes[index] == 0
  end
  return true
end

def add_num_to_primes prime
  p "primes[#{$count}] = #{prime}"
  $primes[$count] = $num
  $count = $count + 1
end

while true do 
  $num = $num + 1
  if $num == 2 then
    add_num_to_primes 2
    next
  end

  if check_primes $num then
    if $limit == add_num_to_primes($num) then
      p "10001th primes is #{$num}"
      exit
    end
  end
end
