$edge = 1001

p 1 + (1..($edge/2)).inject(0){|acc, i|
  iedge = i * 2 + 1
  base = iedge ** 2

  right_top   = base
  left_top    = right_top - (i*2)
  left_bottom = left_top  - (i*2)
  right_bottom= left_bottom- (i*2)
  acc + right_top + left_top + left_bottom + right_bottom
}


