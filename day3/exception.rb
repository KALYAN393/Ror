def div(a,b)
begin
  a/b
rescue StandardError => e
  puts "StandardError #{e}"
rescue Exception => e
  puts e 
else 
  puts "\n#{a/b }"
ensure 
  puts "testing is done"     
end
print "hello world\n"
  
end


div(10,0)
puts "-------------"
div(10,1)