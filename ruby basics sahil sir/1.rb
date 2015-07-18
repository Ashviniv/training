puts"Enter your name"
name = gets.chomp.downcase
puts"#{name}"
puts"Enter another name"
another_name = gets.chomp.downcase
if name == another_name
  puts"hello #{name}"
else
  puts"hello"
end
