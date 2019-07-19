require 'pry'

class Anagram
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1.downcase.split('')
    @word2 = word2.downcase.split('')
  end
  def is_word?
    @vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    @word1.each do |letter|
      if @vowels.include?(letter)
        return true
      end
    end
  end
end
