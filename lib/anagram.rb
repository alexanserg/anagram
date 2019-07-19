require 'pry'

class Anagram
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1
    @array1 = word1.downcase.split('')
    @word2 = word2
    @array2 = word2.downcase.split('')
    @vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  end
  def is_word
    @array1.each do |letter|
      if @vowels.include?(letter)
        return "Word one has at least one vowel"
      end
    end
  end
  def word2_is_anagram
    if @word1 == @word2
      return "that's the same word!"
    elsif @array1.length != @array2.length
      return "That's not an anagram"
    else
      @array2.all? do |letter|
        if @array1.include?(letter)
          return "You have an anagram!"
        end
      end
    end
  end
end
