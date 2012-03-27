$primes = []
$cprimes = []

File.open("primes.txt") do |f|
  while line = f.gets do 
    num = line.strip.to_i
    $primes << num
  end
end

def prime? num
  $primes.include? num
end

def circulate str
  ary = str.chars.to_a
  c = ary.shift
  ary << c
  ary.to_s
end

def circular_prime? n
  n_str = n.to_s
  str = circulate n_str

  while n_str != str do
    return false if !prime?(str.to_i)
    str = circulate str
  end

  return true
end

sum = 0

$primes.each do |prime|
  break if prime >= 1000000
  next if $cprimes.include? prime
  next unless circular_prime? prime
  p "circular : #{prime}"

  $cprimes << prime
  p "added #{prime}"

  n_str = prime.to_s
  str = circulate n_str
  while n_str != str do
    $cprimes << str.to_i
    p "added #{str.to_i}"
    str = circulate str
  end
end

p $cprimes.length
