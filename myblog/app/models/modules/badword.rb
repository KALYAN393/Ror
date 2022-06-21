module Badword
  def is_bad(b)
  a=["bad","verybad","veryverybad","ugly"]
  p=b.split(" ")

  (p&a).length>0
   
  end
end