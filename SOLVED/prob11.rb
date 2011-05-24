require "matrix"

WINDOW_SIZE = 4
$num_matrix   = []
$matrix = nil
$max      = -1
EDGE_SIZE = 20
HEAD_LIMIT = 16


File.open("prob11.dat") do |f|
  while line  = f.gets
    num_strs  = line.strip.split("\s")
    nums      = num_strs.map do |str| str.to_i end
    $num_matrix << nums
  end
end

$matrix = Matrix.rows $num_matrix
p $matrix

# horizontal
$matrix.row_vectors.each do |row_vector|
  0.upto(HEAD_LIMIT) do |n|
  end
end
# vertical

# tilt right

# tilt left
