$total = 1000
$c = 1000
$b = 0
$a = 0

1000.downto(1) do |c|
  (1000-c).downto(0) do |b|
    (1000-c-b).downto(0) do |a|
      break if a>b
      p "mul = #{c*a*b} a=#{a} b=#{b} c=#{c}"  if c**2 == b**2 + a**2 && c+a+b == 1000
    end
  end
end
