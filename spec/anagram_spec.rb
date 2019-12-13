require('rspec')
require('pry')
require('anagram')

describe('Anagram#anagram_check') do
  it('checks to see if the words are anagrams') do
    anagram = Anagram.new('ruby','bury')
    expect(anagram.anagram_check()).to(eq('These words are anagrams.'))
  end
end
