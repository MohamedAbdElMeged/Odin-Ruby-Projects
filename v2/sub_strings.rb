DICTIONARY = %w[below down go going horn how howdy it i low own part partner sit]

def sub_strings(sentence, dictionary)
  result = Hash.new(0)
  sentence_in_words = sentence.split(' ')
  sentence_in_words.each do |word|
    dictionary.each do |dict_word|
      result[dict_word] += 1 if word.downcase.include? dict_word
    end
  end
  result
end

puts sub_strings("Howdy partner, sit down! How's it going?", DICTIONARY)
