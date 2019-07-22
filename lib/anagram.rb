require 'pry'

class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @first_array1 = word1.downcase.split(/[^a-zA-Z]/)
    @first_word1 = @first_array1.join('')
    @array1 = @first_word1.split('')
    @word2 = word2
    @first_array2 = word2.downcase.split(/[^a-zA-Z]/)
    @first_word2 = @first_array2.join('')
    @array2 = @first_word2.split('')
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
    @array2.each do |letter|
      if @array1.include?(letter) == false
        return "That's not an anagram"
      end
    end
    @array1.each do |letter|
      if @array2.include?(letter) == false
        return "That's not an anagram"
      end
    end
    if @first_word1 == @first_word2
      return "that's the same word!"
    elsif @array1.length != @array2.length
      return "That's not an anagram"
    else
        return "You have an anagram!"
    end
  end
  def antigram
    if @array1 & @array2 == []
      return "That's an antigram!"
    else
      return "That's not an antigram"
    end
  end
end
