def m(a)
  puts "before multiplying"
  yield(a)
  puts "after multiplying"
end
a=3
m(a){|b| puts b*b}


