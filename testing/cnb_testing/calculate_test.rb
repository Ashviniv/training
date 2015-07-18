require 'minitest/autorun'
require './calculate'

class TestFile < Minitest::Test

  def setup
    @cnb = Calculate.new
  end 

  def test_word_file_exists
    assert_equal true, @cnb.div_check(1, 0)


    #assert_equal(@cnb.divide, ZeroDivisionError)
  end 
end

