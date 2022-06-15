obj=Array.new([1,2,3,4])

def obj.size()
  a=0
  self.each { |i| a+=1 }
  # a=self.length
  return 2*a
end  

puts obj.size