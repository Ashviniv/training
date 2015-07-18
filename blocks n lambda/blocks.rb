arr = [1,2,3]
arr.each{|a| puts a}
def calculate(arg1, arg2,opr)
  opr.call(arg1,arg2)

end
 puts calculate(5,6 ,lambda{|a,b| a+b})
 puts calculate(5,6 ,lambda {|a,b| a-b})

 def calculate2(a, b)
   yield(a, b)
end

p calculate2(1,2) {|a,b| a+b}

