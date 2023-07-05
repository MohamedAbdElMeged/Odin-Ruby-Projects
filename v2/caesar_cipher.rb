CAPITAL_LETTERS = ('A'..'Z').to_a
SMALL_LETTERS = ('a'..'z').to_a

def encrypt(plain, key)
  result = ''
  plain.each_char do |char|
    result += if CAPITAL_LETTERS.include? char
                CAPITAL_LETTERS[((CAPITAL_LETTERS.index(char) + key) % 26)]
              elsif SMALL_LETTERS.include? char
                SMALL_LETTERS[((SMALL_LETTERS.index(char) + key) % 26)]
              else
                char
              end
  end
  result
end

def decrypt(cipher, key)
  plain = ''
  cipher.each_char do |char|
    plain += if CAPITAL_LETTERS.include? char
               CAPITAL_LETTERS[((CAPITAL_LETTERS.index(char) - key) % 26)]
             elsif SMALL_LETTERS.include? char
               SMALL_LETTERS[((SMALL_LETTERS.index(char) - key) % 26)]
             else
               char
             end
  end
  plain
end

cipher = 'Bmfy f xywnsl!'

puts decrypt(cipher, 5)
