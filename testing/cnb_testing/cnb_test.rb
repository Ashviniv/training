require 'minitest/autorun'
require './cnb_with_class'

class TestFile < Minitest::Test
  def setup
        @cnb = Cnb.new
        @cnb.guess = "cake"
        @cnb.word = "aket"
  end

  def test_word_file_exists
    assert_equal "File doesnot exist", @cnb.get_dictionary
  end

  def test_word_file_doesnot_exist
    assert_equal false, File.exist?("cnb_test1.rb")
  end

  def test_word_file_is_empty
    assert_equal false, File.size("abc.txt") == 0
  end

  def test_word_file_is_not_empty
    assert_equal true,File.size("abc.txt") != 0
  end
end
=begin
  def test_word_is_from_sample_words_only
    assert_equal true, 
  end

  def test_word_is_not_from_sample_words
     assert_equal"",file_buffer
  end
=end

class TestGuessWord < Minitest::Test
  def setup
    @cnb = Cnb.new
    @cnb.guess = "cake"
    @cnb.word = "aket"
  end
def test_guess_word_is_empty
  assert_equal @cnb.guess == "", true
end

def test_guess_word_is_not_empty
  assert_equal false, @cnb.guess == ""
end


def test_guess_word_contains_only_characters
  assert_equal true,@cnb.guess.match(/[^a-zA-z]/) == nil
end

def test_guess_word_doesnot_contain_only_characters
  assert_equal false,@cnb.guess.match(/[^a-zA-z]/) == nil
end
end

class TestWords < Minitest::Test
  def setup
    @cnb = Cnb.new

    @cnb.guess = "cake"
    @cnb.word = "aket"
  end

  def test_words_match
    assert_equal true,@cnb.words_match
  end

  def test_words_donot_match
    assert_equal false,@cnb.words_match
  end

  def test_length_matches
    assert_equal true ,@cnb.length_match
  end

  def test_length_doesnot_match
    assert_equal false,@cnb.length_match
  end
end

class TestCnb < Minitest::Test
  def setup
    @cnb = Cnb.new

    @cnb.guess = "cake"
    @cnb.word = "aket"
  end
  def test_number_of_cows_n_bulls_are_correct
    assert_equal [3, 0],@cnb.cows_n_bulls
  end


  def test_number_of_cows_n_bulls_are_not_correct
    assert_equal [1, 2], @cnb.cows_n_bulls
  end

end
=begin
class TestHistory < Minitest::Test

  def test_number_of_attempts_are_five
     assert_equal"",file_buffer
  end

  def test_history_hash_is_correct
     assert_equal"",file_buffer
  end

  def test_history_hash_is_not_correct
     assert_equal"",file_buffer
  end

end
=end
