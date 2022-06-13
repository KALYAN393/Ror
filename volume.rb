class Vol
  @@r=10
  def initialize(h)
    @h=h
  end  
  def print() 
    ans=2*3.14*@@r*@h
    puts ans
  end 
end    

obj=Vol.new(15)
obj.print()
