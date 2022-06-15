a=[1,2,3]
mul=Proc.new{|i| puts i*2}
a.each{ |x| mul.call(x)}

