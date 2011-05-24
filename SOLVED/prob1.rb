i = 0;
1.upto(1000-1) do |n|
  if n % 3 == 0 or n % 5 == 0 then
    p n
    i = i + n
  end
end

p i

