class Divideerror<StandardError
  attr_reader :reason

  def initialize(reason)
    @reason=reason
    puts @reason
  end 
end
def div(a,b)
  if b==0
  begin
    raise Divideerror.new("0") 
  rescue 
    puts "exception handled" 
       
  end
  print "hello world\n"
else 
  puts a/b
end  
end
  
  
  div(10,0)
  puts "-------------"
  div(10,1)