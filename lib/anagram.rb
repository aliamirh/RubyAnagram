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

end
