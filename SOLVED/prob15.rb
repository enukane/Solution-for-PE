$vert = 20
$hori = 20

def fact n
  (1..n).to_a.inject(1) {|acc, item| acc * item}
end

p fact($vert + $hori)/( fact($vert) *  fact( $hori) )
