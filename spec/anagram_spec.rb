require('rspec')
require('pry')
require('anagram')

describe('Anagram#anagram_check') do
  anagram = Anagram.new()
  expect(anagram.anagram_check('ruby','bury')).to(eq('These words are anagrams.'))
end
