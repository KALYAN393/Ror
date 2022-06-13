# Write a ruby program to create array of hash of student records with each hash record having keys like name, roll no, marks

# Implement method in this program which takes array of hash and name as input and returns whether student is passed or failed based on passing marks (35)

# Implement another method to calculate and update hash with percentage based on marks obtained out of 100.

def result(student)
  student.each do |s|
  if s["marks"]>35
    puts "#{s["name"]}  passed"
  else 
  puts "#{s["name"]} failed"
  end
end
end  

def percentage(student)
  student.each do |s|
  p="#{s["marks"]}%"
  s["percentage"]=p
  end
end  

student=[{"name"=>"kalyan","rolno"=>1,"marks"=>90},
{"name"=>"hhh","rolno"=>2,"marks"=>30},{"name"=>"mac","rolno"=>3,"marks"=>45}]
result(student)
puts student
percentage(student)
puts student

# student["percentage"]=percentage(student)
# puts student