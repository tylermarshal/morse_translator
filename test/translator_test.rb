require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/translator'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translate.new

    assert_instance_of Translate, translator
  end

  def test_it_converts_string_to_morse
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_it_can_convert_from_external_txt_file
    translator = Translate.new

    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

  def test_it_can_convert_morse_to_english
    translator = Translate.new

    #is this possible without some sort of break between characters?
    assert_equal "hello world", translator.morse_to_eng("...././.-../.-../---/ /.--/---/.-./.-../-..")
  end

end
