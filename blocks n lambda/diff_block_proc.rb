lamb = lambda {|a| puts a}
p lamb.call("a")
#p lamb.call("a","b")
p = Proc.new{|a| puts a}
p.call(1)
p.call(1,2,3)
#p.call
def lambda_test
  p "###"
  lam = lambda {return}
  lam.call
  p "@@@@@"
end


def proc_test
  p "###"
  p = Proc.new do 
      return
  end
  p.call
  p "@@@@"
end
proc_test
