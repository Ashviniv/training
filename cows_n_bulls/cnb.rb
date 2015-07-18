class InvalidWordError < StandardError; end
class InvalidoptionError < StandardError; end
while true do
  sample_words = ["cake", "cat", "test", "buffer", "four"]
  word = sample_words.sample
  history = []
  max_chances = 5
  no_of_guesses = 0
  retries = 0
  guess = ""
  for no_of_guesses in 0...max_chances do 
    begin
      puts"you have #{max_chances - no_of_guesses} chances\n"
      puts"Guess the word of length #{word.length}\n"
      guess = gets.chomp
      raise InvalidWordError,"Invalid word" if guess.match(/[^a-zA-z]/)
    rescue InvalidWordError => e
      p e
    end
    bulls = 0
    cows = 0
    next if guess.length != word.length
    if word == guess 
      puts"you won!!"
      break
    end
    guess.each_char.with_index do |c, index|
      if word.include?(guess[index]) 
        guess[index] == word[index]? bulls += 1: cows += 1
      end
    end
    history += ["Attempt #{no_of_guesses + 1} cows: #{cows} bulls: #{bulls}"]
    puts"you have got cows: #{cows} and bulls: #{bulls}\n"
    if bulls == 0 && cows == 0 
      puts"sorry,you lost!!\n"
      break
    end
  end  
  puts"sorry!! your chances are over\n\n" if no_of_guesses == max_chances - 1
  begin
    puts "#{history}\n"
    puts "Do you want to continue?[Y/N]\n"
    option = gets.chomp

    break if option == 'N'
    raise InvalidoptionError, "Invalid option"if option != 'Y'
  rescue InvalidoptionError => e
    retries += 1
    p e
    retry if retries < 3
    exit
  end

end
