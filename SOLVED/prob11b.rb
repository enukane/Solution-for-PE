require "matrix"
WINDOW_SIZE = 4
EDGE_SIZE = 20
EXT_EDGE_SIZE = 24
EXT_ARY = [1, 1, 1, 1]

$num_matrix = []
$orig_matrix = []
$max = -1

4.times do 
  $num_matrix << Array.new(28) {|i| 1}
end

File.open("prob11.dat") do |f|
  while line  = f.gets
    num_strs  = line.strip.split("\s")
    nums      = num_strs.map do |str| str.to_i end
    $orig_matrix <<  nums
    $num_matrix << EXT_ARY + nums + EXT_ARY
  end
end

4.times do 
  $num_matrix << Array.new(28) {|i| 1}
end

$matrix = $num_matrix
p $matrix

WINDOW_SIZE.upto(EXT_EDGE_SIZE-1) do |i|
  WINDOW_SIZE.upto(EXT_EDGE_SIZE-1) do |j|
    vert_cur =  
      $matrix[i][j] * 
      $matrix[i][j+1] *
      $matrix[i][ j+2] *
      $matrix[i][ j+3]
    p "vert_cur[#{i},#{j}] = #{vert_cur}"
    horiz_cur=  
    $matrix[i][ j] *
    $matrix[i+1][j] *
    $matrix[i+2][j] *
    $matrix[i+3][j]
    p "vert_cur[#{i},#{j}] = #{horiz_cur}"
    tilt_left=  
    $matrix[i][ j] *
    $matrix[i+1][j+1] *
    $matrix[i+2][j+2] *
    $matrix[i+3][j+3]
    p "vert_cur[#{i},#{j}] = #{tilt_left}"
    tilt_rig =  
    $matrix[i][j] *
    $matrix[i-1][j+1] *
    $matrix[i-2][j+2] *
    $matrix[i-3][j+3]
    p "tilt_rig[#{i},#{j}] = #{tilt_rig}"

    $max = vert_cur if $max < vert_cur
    $max = horiz_cur if $max < horiz_cur
    $max = tilt_left if $max < tilt_left
    $max = tilt_rig  if $max < tilt_rig
    p "max at [#{i},#{j}] =  #{$max}"
  end
end

p $max

