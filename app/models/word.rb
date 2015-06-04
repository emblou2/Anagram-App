class Word

  def self.find_anagram(letters)
  length = letters.length

  letters = letters.split("")

  anagrams = []

  letters.each_with_index do |letter, index|
    remaining_letters = letters.select {|l| l != letter}
    anagrams << letter + remaining_letters.join

    anagrams << letter + reverse_letters(remaining_letters).join
  end

anagrams
end

def self.reverse_letters(letters)
  length = letters.length
  reversed_letters = Array.new(length)
 
  
  letters.each_with_index do |letter, index|
    reversed_letters[length - index - 1] = letter
  end
 
  reversed_letters
end
 
end