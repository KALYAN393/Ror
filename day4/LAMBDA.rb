a=[1,2,3]
lam = ->(x) { puts x * 2 }
a.each{|i| lam.call(i)}

# lam = ->(x,y) { puts x * y }

# lam.call(2,2)