class Array
  def newmap
    newarr=[]
    self.each do |i|
      newarr<<(yield(i))
    end 
    return newarr
  end  

end

a=[1,2,3]
puts a.newmap { |a| (a*5)}

