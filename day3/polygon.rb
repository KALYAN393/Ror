class Polygon
  
  def initialize(a)
    @a=a
  end

  def area()
    return @a*@a
  end
end

class Square<Polygon

  def initialize(a)
    super
  end

  def area()  
    a=super  
    puts "Area of the Square is #{a}"
  end
  
  def getdetails()
    puts "length of one side in a square #{@a} "
  end
end 
    
class Rectangle<Polygon
  def initialize(a,b)   
    @a=a
    @b=b
  end
  def area()
    puts "Area of the Rectangle is #{@a*@b}"
  end
  def getdetails()
    puts "length and Breadth of a Rectangle is #{@a} and #{@b}"
  end
end

class Triangle<Polygon
  def initialize(l,b)
    @l=l
    @b=b 
  end
  def area()
   puts "Area of the Triangle is #{0.5*@l*@b}"
  end
  def getdetails()
    puts "length and Breadth of a Triangle is #{@l} and #{@b}"
  end
end


S=Square.new(10)
S.area()
S.getdetails()
R=Rectangle.new(5,10)
R.area()
R.getdetails()
T=Triangle.new(20,10)
T.area()   
T.getdetails() 