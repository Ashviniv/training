require 'minitest/autorun'
require './cnb_with_class'

class TestFile < Minitest::Test
  def setup
    @cnb = Cnb.new
  end

  def test_word_file_exists
    assert_equal true, file_exist?("cnb_test.txt")
  end

  def test_word_file_doesnot_exist
    assert_equal false, file_exist?("cnb_test1.txt")
  end
end
