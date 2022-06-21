module Badword
  def is_bad?(para)
  a=["bad","verybad","veryverybad","ugly"]
  p=para.split(" ")
  if p&a
    return true
  else
    return false
  end
  end

end