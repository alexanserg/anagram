require 'rspec'
require 'Anagram'

describe('#Anagram')
  it('checks that input is a real word') do
     anagram.word?()
  expect(anagram.word?()).to(eq(true))
 end
end
