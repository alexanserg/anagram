require 'pry'

class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @array1 = word1.downcase.split('')
    @word2 = word2
    @array2 = word2.downcase.split('')
    @vowels = ['a', 'e', 'i', 'o', 'u', 'y']
  end
  def is_word
    if @vowels & @array1 == []
        return "Words must contain at least one vowel"
    else
      return "Word one has at least one vowel"
    end
  end
  def word2_is_anagram
    if @word1 == @word2
      return "that's the same word!"
    elsif @array1.length != @array2.length
      return "That's not an anagram"
    elsif (@array1 & @array2).length == @array1.length
      return "You have an anagram!"
    else
      return "that is not an anagram"
    end
  end
  def antigram
    if @array1 & @array2 == []
      return "That's an antigram!"
    else
      return "That's not an antigram"
    end
  end
  def test
    (@array1 & @array2).length
  end
end
