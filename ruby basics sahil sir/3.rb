i = 3
flag = 0
for k in 0...3
  i.times do
    print "*"
  end
  puts""

  i = i - 1
end
for l in 0..2 do
  i+2.times do 
    print "*"
  end
  i = i + 1
  puts""
end
print"*"
