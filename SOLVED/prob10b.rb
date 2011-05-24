$data = Array.new(2000000){|i| i}
$data.shift # remove 0
$data.shift # remove 1

p "array craeted : length #{$data.length}"

def is_prime ary, num
  0.upto(ary.length-1) do |idx|
    return false if num % ary[idx] == 0
  end
  return true
end

$primes = $data.inject([]) {|acc, item|
  if is_prime acc, item then
    p "#{item}"
    acc << item
  end
  acc
}

p "calc sum"
p $primes.inject(0) { |acc, item| acc + item}


