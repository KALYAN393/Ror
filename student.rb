# Write a ruby program to create array of hash of student records with each hash record having keys like name, roll no, marks

# Implement method in this program which takes array of hash and name as input and returns whether student is passed or failed based on passing marks (35)

# Implement another method to calculate and update hash with percentage based on marks obtained out of 100.

def result(student,name)
  student.each do |s|
  if s["marks"]>35 and s["name"]=name
    return "#{s["name"]}  passed"

  else 
  return "#{s["name"]} failed"
  end
end
end  

def percentage(student,name)
  student.each do |s|
    if s["name"]=name
       p="#{s["marks"]}%"
       s["percentage"]=p
    end
  end
end  

def grade(student,name)
  student.each do |s|
    if  s["name"]=name
    case s["marks"]
    when 40..59
      s[:grade]="c"
    when 60..79
      s[:grade]="b"  
    when 80..101
      s[:grade]="a"
    else
      s[:grade]="f"   
    end
    end 
  end 
end  
student=[{"name"=>"kalyan","rolno"=>1,"marks"=>90},
{"name"=>"hhh","rolno"=>2,"marks"=>30},{"name"=>"mac","rolno"=>3,"marks"=>45}]
puts result(student,"kalyan")
puts student
puts "before"
percentage(student,"kalyan")
puts student
grade(student,"kalyan")
puts student

# student["percentage"]=percentage(student)
# puts student