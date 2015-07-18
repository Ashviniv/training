class InvalidNameError < StandardError; end
class InvalidMarksError < StandardError; end
class Student
  attr_accessor :name, :marks
  def initialize
    @name = " "
    @marks = 0
  end
  def accept_name
    name = gets.chomp
    raise InvalidNameError,"Invalid name" if name == ""
  end
  def accept_mark
    marks = gets.chomp.to_i
  
    raise "Invalid marks" if(marks < 0)
  end
end
s = Student.new
s.accept_name
s.accept_mark

