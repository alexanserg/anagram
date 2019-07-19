require ('rspec')
require ('Anagram')

describe('#Anagram') do
  it('checks that word1 contains at least one vowel') do
    anagram = Anagram.new("Dog", "God")
  expect(anagram.is_word).to(eq("Word one has at least one vowel"))
  end
  it("checks that word one and word two aren't the same word") do
    anagram = Anagram.new("God", "God")
  expect(anagram.word2_is_anagram).to(eq("that's the same word!"))
  end
  it("should tell if word two is not an anagram of word one") do
    anagram = Anagram.new("Gods", "Dog")
  expect(anagram.word2_is_anagram).to(eq("That's not an anagram"))
  end
end
