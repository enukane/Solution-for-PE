$limit = 1000000
$max_seq = -1
$max_seq_num = -1

def do_sequence n
  return n/2 if n.even?
  return 3 * n + 1
end

($limit-1).downto(1) do |n|
  m = n
  seq =1 
  while m != 1 do
    m = do_sequence m
    seq += 1
  end

  if $max_seq <= seq then
    $max_seq = seq
    $max_seq_num = n
    p "@#{$max_seq_num} : #{$max_seq}"
  end
end

p "max_seq is @#{$max_seq_num} : #{$max_seq}"

