module Superman
  def fly
   p "yes"
  end
end
module Superman2
  def fly
    p 'no'
  end
end
module Superman3
  def fly
    p '3'
#   super
  end
end
class Human
 include Superman2
 include Superman
 include Superman3
end
p Human.new.fly

