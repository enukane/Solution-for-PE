
def sum_of_square num
  val = 0
  num.downto(1) do |num|
    val = val + (num*num)
  end
  return val
end

def square_of_sum num
  val = 0
  num.downto(1) do |num|
    val = val + num
  end
  return val * val
end

p "=> #{ square_of_sum(100) - sum_of_square(100) }"
