puts"where do want to go?"
puts"\
  1.pune\n\
  2.Goa\n\
  3.Daman \n\
  4.Dapoli"
option = gets.chomp.to_i
case option
  when 1
    puts"you want to go to Pune"
  when 2
    puts"you want to go to Goa"
  when 2
    puts"you want to go to Daman"
  when 2
    puts"you want to go to Dapoli"
  else
    puts"None of these"
end
