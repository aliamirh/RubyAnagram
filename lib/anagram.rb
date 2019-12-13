class Anagram
  def initialize(input1, input2)
    @input1 = input1.downcase.split('').sort
    @input2 = input2.downcase.split('').sort
  end

  def anagram_check()
    if @input1 == @input2
      return "These words are anagrams."
    end
  

end


end
