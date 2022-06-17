def m()
  puts "before multiplying"
  yield(3)
  puts "after multiplying"
end

m{|b| puts b*b}


