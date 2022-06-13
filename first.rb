$value=1
VAR=3

class First
@@v=2
 def initialize(v1)
   @value1=v1
 end
  def add()
    sum=$value+VAR+@@v+@value1
    puts sum
  end
end

obj1=First.new(1)
obj1.add()
