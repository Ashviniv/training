class Calculate

  def divide
  begin
    1/0
   p 'I should never get executed'
  rescue
      p 'I am rescuing an exception and can do what I want!'
  end
  end

  def div_check(x, y)
    begin
      x / y
    rescue ZeroDivisionError
      true
    else
      false
    end
  end
end
p Calculate.new.divide
