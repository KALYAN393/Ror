class Array
  def newfind
    res=nil
    self.each do |i|
      if yield(i)  
        res=i
        break
      end
    end
    return res
  end
  
end
a=[1,2,3]
puts a.newfind{ |i| i==3}
puts a.newfind{ |i| i==2}
puts a.newfind{ |i| i==5}

