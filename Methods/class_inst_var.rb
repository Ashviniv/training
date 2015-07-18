class App
  @@count = 0
  
  def self.set_prop
    @@count +=1 
  end
  def self.set_prop(value)
    @@count = value
  end
end
