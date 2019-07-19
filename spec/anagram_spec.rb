require 'rspec'
require 'Anagram'

describe('#Anagram')
  it('checks that input is a real word') do
     anagram.is_word?()
  expect(anagram.is_word?()).to(eq(true))
 end
end
