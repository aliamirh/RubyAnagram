class Anagram
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2
  end

  def anagram_check()
    input1 = @input1.downcase.gsub(/[^a-z0-9]/i, '').split('').sort
    input2 = @input2.downcase.gsub(/[^a-z0-9]/i, '').split('').sort
    if input1 == input2
      return "These words are anagrams."
    else
      return "Sorry, these are not anagrams."
    end
  end
  def anagram_vowel_check()
    # input1 = @input1.scan(/[^aeiou]/)
    # input2 = @input2.scan(/[^aeiou]/)

    if @input1.include?(/[aeiou]/) || @input2.include?(/[^aeiou]/)
      return "no vowels"
    else
      return 'has vowels'
    end
  end
end
