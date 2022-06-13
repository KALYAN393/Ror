class Rectangle
  attr_writer :len, :brd

  def area()
    puts @len*@brd
  end
end

obj=Rectangle.new
obj.len=10
obj.brd=20
obj.area()

