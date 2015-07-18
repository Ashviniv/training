class Speaker
  def self.say(hello)
    puts"speaker says #{hello}"
    return self
  end
 
 def self.drinks(water)
    puts"speaker drinks #{water}"
  end
end
Speaker.say("hello")
Speaker.new.say("hello")
