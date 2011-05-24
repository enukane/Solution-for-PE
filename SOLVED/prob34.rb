$num = 3
$sum = 0

def fact n
   p n
  (1..n).to_a.inject(1) { |mul, num| mul * num}
end

while true do
  sod = $num.to_s.chars.to_a.inject(0){|acc, place| acc + (1..(place.to_i)).inject(1){|mul, num| mul * num }}
  if $num == sod then
    $sum = $sum + $num
    p "num is sum_of_digit : #{$num} =  #{sod} : sum #{$sum}"
  end
  $num = $num + 1
end

p "=>#{$sum}"
