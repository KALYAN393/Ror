require 'prime'
n=10
x=2
while n>0 do
  if x.prime?
    puts x
    n-=1
  end
  x+=1
end

