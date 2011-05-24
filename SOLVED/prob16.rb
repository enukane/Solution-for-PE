
p (2**1000).to_s.chars.to_a.inject(0){|acc, item| acc + item.to_i }
