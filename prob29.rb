ary = []

2.upto(100) do |a|
  2.upto(100) do |b|
    ary << a**b
  end
end

ary.sort
p ary.uniq.size
