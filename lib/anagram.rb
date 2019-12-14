class Anagram
  def initialize(input1, input2)
    @input1 = input1.downcase.gsub(/[^a-z0-9]/i, '').split('').sort
    @input2 = input2.downcase.gsub(/[^a-z0-9]/i, '').split('').sort
  end

  def anagram_check()

    if @input1 == @input2
      return "These words are anagrams."
    else
      return "Sorry, these are not anagrams."
    end
  end

  def anagram_vowel_check()
    if @input1.any?(/[aeiou]/) || @input2.any?(/[aeiou]/)
      return "has vowels"
    else
      return 'no vowels'
    end
  end

  def antigram_check()
    @input1.each do |input1|
      if @input2.include?(input1)
        return 'this is an antigram'
      else
        return "this is not an antigram"
      end
    end
    # anigram1 = @input1
    # anigram2 = @input2
    # if anigram1.include?(anigram2)
    #   return 'this is a antigram'
    # else
    #   return "hi"
    # end
  end
end
