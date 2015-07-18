puts"Enter a sentence"
sentence = gets.chomp
puts"Enter word to be searched"
word = gets.chomp
words = sentence.split(" ")
print words
puts words.length
for i in 0...words.length
  if words[i] == word
    puts"yes"
    break
  else if i == words.length-1
    puts "no"
  end
end
end

