p (1..1000).inject(0){|acc, item| acc + (item ** item)}.to_s[-10..-1]
