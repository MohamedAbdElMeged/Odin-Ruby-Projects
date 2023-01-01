DICTIONARY = %w[below down go going horn how howdy it i low own part partner sit]

sentence = gets.chomp

def sub_strings(sentence)
  result = Hash.new(0)
  sentence_in_words = sentence.split(' ')
  sentence_in_words.each do |word|
    DICTIONARY.each do |dic_word|
      result[dic_word] += 1 if word.downcase.include?(dic_word)
    end
  end
  result
end

puts sub_strings(sentence)
