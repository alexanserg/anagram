require 'pry'

class Anagram
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1.downcase.split('')
    @word2 = word2.downcase.split('')
    @vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  end
  def is_word1?
    @word1.each do |letter|
      if @vowels.include?(letter)
        return "Word one has at least one vowel"
      end
    end
  end
  def is_word2?
    @word2.each do |letter|
      if @vowels.include?(letter)
        return "Word two has at least one vowel"
      end
    end
  end
end
