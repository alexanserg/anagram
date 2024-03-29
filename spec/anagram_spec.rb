require ('rspec')
require ('Anagram')

describe('#Anagram') do
  it('checks that word1 contains at least one vowel') do
    anagram = Anagram.new("Dog", "God")
  expect(anagram.is_word).to(eq("Word one has at least one vowel"))
  end
  it("should ignore punctuation") do
    anagram = Anagram.new("Dog's", "Dogs")
  expect(anagram.word2_is_anagram).to(eq("that's the same word!"))
  end
  it('checks that word1 contains at least one vowel') do
    anagram = Anagram.new("Dg", "Gd")
  expect(anagram.is_word).to(eq("Words must contain at least one vowel"))
  end
  it("should not be case sensitive") do
    anagram = Anagram.new("God", "dog")
    expect(anagram.word2_is_anagram).to(eq("You have an anagram!"))
  end
  it("checks that word one and word two aren't the same word") do
    anagram = Anagram.new("God", "God")
  expect(anagram.word2_is_anagram).to(eq("that's the same word!"))
  end
  it("should tell if word two is not an anagram of word one") do
    anagram = Anagram.new("Gods", "Dog")
  expect(anagram.word2_is_anagram).to(eq("That's not an anagram"))
  end
  it('should identify an antigram') do
    anagram = Anagram.new("God", "run")
  expect(anagram.antigram).to(eq("That's an antigram!"))
  end
  it('should handle multi-word anagrams') do
    anagram = Anagram.new("fast car", "fat scar")
  expect(anagram.word2_is_anagram).to(eq("You have an anagram!"))
  end
end
