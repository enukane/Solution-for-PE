
$init = 998001
$val = -1

def is_palindromic num
  return num.to_s == num.to_s.reverse
=begin
  str = num.to_s

  lim = str.length - 1
  hp = 0
  tp = lim
  while hp < tp do
    return false if str[hp] != str[tp]
    hp = hp+1
    tp = tp-1
  end
  return num.to_s[hp] == num.to_s[tp]
=end
end

def div_by_three_place num
  100.upto 999 do |tp_num|
    next unless num % tp_num == 0
    return true if (num/tp_num).to_s.length == 3
  end
  return false
end

$init.downto(10000) do |num|
  next unless is_palindromic num
  print "#{num} : PALINDROMIC "
  if div_by_three_place num then
    print " OK\n"
    $val = num
    break
  end
  print " NO \n"
end
