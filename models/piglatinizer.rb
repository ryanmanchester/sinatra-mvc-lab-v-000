require 'pry'
class PigLatinizer


def piglatinize(text)

  vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
  
    text_arr = text.split(//)
    new_pig_word = " "


  if vowels.include?(text_arr.first) || text_arr.count == 1
    new_pig_word = text + "way"

  else
   text_arr.each_with_index do |letter, index|
    if vowels.include?(letter)
      vowel_index = index
      first_letter = text_arr.slice!(0...vowel_index)
      new_pig_word = text_arr.join + first_letter.join + "ay"
      return new_pig_word
    end
  end
end
  new_pig_word

end

def sentence_split(sentence)

end


end
