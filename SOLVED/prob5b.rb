=begin
ary = (11..20).to_a
$lcm = 1
0.upto(ary.size-2) do |i|
  $lcm = ary[i].gcdlcm($lcm)[1]
end
 p $lcm
=end

require "rational"
 p (1..20).inject(1){|lcm, i| i.gcdlcm(lcm)[1]}
