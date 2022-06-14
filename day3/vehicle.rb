class Vehicle
  def initialize(t,s)
    @t=t 
    @s=s 
  end
  def move()
    puts "number of tyres in the vehicle is #{@t}"
    puts "number of seats in the vehicle is #{@t}"
  end 
end
class Bike<Vehicle
  def initialize(t,s)
    super 
  end
  def move()
    super
  end
end

class Car<Vehicle
  def initialize(t,s)
    super 
  end
  def move()
    super
  end
end

B=Bike.new(2,2)
B.move()

C=Car.new(4,4)
C.move

