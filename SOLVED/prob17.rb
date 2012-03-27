$num_to_word = {
  0 => "and",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10=> "ten",
  11=> "eleven",
  12=> "twelve",
  13=> "thirteen",
  14=> "fourteen",
  15=> "fifteen",
  16=> "sixteen",
  17=> "seventeen",
  18=> "eighteen",
  19=> "nineteen",
  20=> "twenty",
  30=> "thirty",
  40=> "forty",
  50=> "fifty",
  60=> "sixty",
  70=> "seventy",
  80=> "eighty",
  90=> "ninety",
  100=> "hundred",
  1000=> "thousand"
}

sum = 0

def word_length_of_num_in_english num
  print "#{num} : "
  cur = 0
  # 1000
  if num == 1000
    print "#{$num_to_word[1]}#{$num_to_word[1000]} :#{$num_to_word[1].length+$num_to_word[1000].length}\n"
    return $num_to_word[1].length + $num_to_word[1000].length
  end

  # 100 ~ 999
  n_at_100  = num / 100
  n_ex_100  = num % 100
  n_at_10   = n_ex_100 / 10
  n_at_1    = n_ex_100 % 10

  # 100, 200, ... 900
  if n_at_100 > 0 then
    cur += $num_to_word[n_at_100].length
    print $num_to_word[n_at_100]
    cur += $num_to_word[100].length
    print $num_to_word[100]
  end

  if n_ex_100 > 0 then
    if n_at_100 > 0
      cur += $num_to_word[0].length
      print $num_to_word[0]
    end

    str = $num_to_word[n_ex_100]
    if str then
      cur += str.length
      print "#{str} : #{cur}\n"
      return cur
    end

    # 1 to 99 but not in n_to_word
    # 21, 22 .... 99 
    cur += $num_to_word[n_at_10*10].length  if n_at_10 > 0
    print $num_to_word[n_at_10*10]
    cur += $num_to_word[n_at_1].length   if n_at_1 > 0
    print $num_to_word[n_at_1]
  end
  print " : total #{cur}\n"

  return cur
end

p (1..1000).inject(0){|sum, num|
  sum + word_length_of_num_in_english(num)
}

p word_length_of_num_in_english(342)
p word_length_of_num_in_english(115)
