DICTIONARY = %w[below down go going horn how howdy it i low own part partner sit]

def sub_strings(sentence, dictionary)
  result = Hash.new(0)
  downcased_sentence = sentence.downcase
  dictionary.each do |dict_word|
    matches = downcased_sentence.scan(dict_word).size
    result[dict_word] = matches if matches > 0
  end
  result
end

puts sub_strings("Howdy partner, sit down! How's it going?", DICTIONARY)
