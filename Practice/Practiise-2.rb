a=[10,11,12,13,14,15,16,17,18,19,20]
p a.select {|num| num >15}
p  a.select { |num| num.to_s == "13"}

p a.map  {|num| num.to_s.reverse}

