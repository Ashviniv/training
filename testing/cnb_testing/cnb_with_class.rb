class InvalidFileError < StandardError; end
class Cnb
  attr_accessor :guess,:word
  def get_dictionary
    begin
    @sample_words = File.open("hello.txt", "r") {|file| file.read.split(' ')}
    rescue 
      "File doesnot exist"
    end
  end

def sample_words
 p get_dictionary
 
  @word = @sample_words.sample

end

def user_input
  @guess = "caks"
end


def words_match
  @guess == @word
end

def length_match
  @guess.length == @word.length
end

def cows_n_bulls
  bulls = 0 
  cows = 0 
  @guess.each_char.with_index do |c, index|
    if @guess.include?(@word[index])
     @guess[index] == @word[index]? bulls += 1: cows += 1
    end
  end
  return cows, bulls
end

def playGame
  sample_words

  no_of_chances = 5
  no_of_chances.times do |attempts|
    user_input
    if words_match
      puts "You won!!"
      break
    else
      cnb = cows_n_bulls
      p cnb
      puts"you lost!!"if cnb == [0, 0]
    end
  end
end
end

cnb = Cnb.new
cnb.playGame
