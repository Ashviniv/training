class Student
  def hello
    "hello"
  end
  def self.hello
    "class hello"
  end
end
p Student.hello
p Student.new.hello
