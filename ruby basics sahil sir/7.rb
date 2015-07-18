first_string = gets.chomp
second_string = gets.chomp
first_array = first_string.split('')
sec_array = second_string.split('')
if first_array.sort == sec_array.sort
  puts"equal"
end
