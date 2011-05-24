require "mathn"
$TARGET = 600851475143 

$limit = Math.sqrt($TARGET).ceil
p "limit = #{$limit}"

$max_prime = -1

def prime? num
  2.upto(num-1) do |n|
    return false if num % n == 0
  end
  return true
end

($limit).downto(2) do |num|
  if $TARGET % num == 0 then
    p "#{$TARGET} % #{num} == 0"
    p "candidate #{num}"
    if prime? num then
      p "prime = #{ num}"
    end
  end
end

#p = Prime.new
#p.each do |prime|
#  p prime
#  break if prime > $limit
#  $max_prime = prime if ( $TARGET % prime == 0 )
#end
