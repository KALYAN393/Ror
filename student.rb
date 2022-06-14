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

def percentage(student)
  student.each do |s|
       p="#{s["marks"]}%"
       s["percentage"]=p
    end
end  

def grade(student,n)
  i= student.find{|x| x["name"]==n}
    case i["marks"]
    when 40..59
      i[:grade]="c"
    when 60..79
      i[:grade]="b"  
    when 80..101
      i[:grade]="a"
    else
      i[:grade]="f"   
  end 
end  
student=[{"name"=>"kalyan","rolno"=>1,"marks"=>90},
{"name"=>"hhh","rolno"=>2,"marks"=>30},{"name"=>"mac","rolno"=>3,"marks"=>45}]
puts result(student,"kalyan")
puts student
puts "percentage"
percentage(student)
puts student
puts "grade of kalyan "
grade(student,"kalyan")
puts student

# student["percentage"]=percentage(student)
# puts student