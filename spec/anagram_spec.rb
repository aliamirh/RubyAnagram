require('rspec')
require('pry')
require('anagram')

describe('Anagram#anagram_check') do
  it('checks to see if the words are anagrams') do
    anagram = Anagram.new('ruby','bury')
    expect(anagram.anagram_check()).to(eq('These words are anagrams.'))
  end
  it('checks to see if words given are not an anagram') do
    anagram = Anagram.new('ruby','curby')
    expect(anagram.anagram_check()).to(eq('Sorry, these are not anagrams.'))
  end
  it ('it checks to see if words with capital letters are still anagrams') do
    anagram = Anagram.new('RuBy','bury')
    expect(anagram.anagram_check()).to(eq('These words are anagrams.'))
  end
  it ('checks to see of word has a vowel') do
    anagram = Anagram.new('ruby','bury')
    expect(anagram.anagram_vowel_check()).to(eq('has vowels'))
  end
  it ('checks to see of word doesnt have a vowel') do
    anagram = Anagram.new('rtby','btry')
    expect(anagram.anagram_vowel_check()).to(eq('no vowels'))
  end
  it ('checks to see of word doesnt have a vowel') do
    anagram = Anagram.new('runy','runy')
    expect(anagram.antigram_check()).to(eq('this is an antigram'))
  end

end
