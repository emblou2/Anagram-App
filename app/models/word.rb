class Word < ActiveRecord::Base

   before_create :add_letters

  def add_letters
    characters = self.text.chars
    alphabetized_characters = characters.sort
    self.letters = alphabetized_characters.join
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




  def self.find_anagrams(letters)
  length = letters.length

  letters = letters.split(//)

  anagrams = []

  letters.each do |letter|
    remaining_letters = letters.select {|l| l != letter}
    anagrams << letter + remaining_letters.join
 
    anagrams.rotate! 
   
  end
    Word.where("text in (?)", anagrams)
end


