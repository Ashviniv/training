str1 = ''
str = gets.chomp
str_array = str.split('')
print str_array 

str_array.each do |n|
# print n
 str1 = str1 + n
end

puts str1
