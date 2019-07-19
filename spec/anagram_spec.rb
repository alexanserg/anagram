require ('rspec')
require ('Anagram')

describe('#Anagram') do
anagram = Anagram.new("Dog", "God")
  it('checks that word1 contains at least one vowel') do
     anagram.is_word1?
  expect(anagram.is_word1?).to(eq("Word one has at least one vowel"))
 end

end
