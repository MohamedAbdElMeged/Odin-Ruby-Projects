require 'byebug'
class CaesarCipher
  CAPITAL_CASE_LETTERS = ('A'..'Z').to_a
  SMALL_CASE_LETTERS = ('a'..'z').to_a
  attr_accessor :text, :key, :result

  def initialize(**arg)
    @text = arg[:text]
    @key = arg[:key]
    send(arg[:method].to_s, @text, @key)
  end

  def encrypt(text, key)
    text_chars = text.chars
    cipher_text = ''
    text_chars.each do |ch|
      cipher_text += if CAPITAL_CASE_LETTERS.include?(ch)
                       CAPITAL_CASE_LETTERS[(CAPITAL_CASE_LETTERS.index(ch) + key) % 26]
                     elsif SMALL_CASE_LETTERS.include?(ch)
                       SMALL_CASE_LETTERS[(SMALL_CASE_LETTERS.index(ch) + key) % 26]
                     else
                       ch
                     end
    end
    @result = cipher_text
  end

  def decrypt(text, key)
    cipher_chars = text.chars
    plain_text = ''
    cipher_chars.each do |ch|
      plain_text += if CAPITAL_CASE_LETTERS.include?(ch)
                      CAPITAL_CASE_LETTERS[(CAPITAL_CASE_LETTERS.index(ch) - key) % 26]
                    elsif SMALL_CASE_LETTERS.include?(ch)
                      SMALL_CASE_LETTERS[(SMALL_CASE_LETTERS.index(ch) - key) % 26]
                    else
                      ch
                    end
    end
    @result = plain_text
  end
end
puts '########################################'
puts 'Welcome To Caesar Cipher App'
puts 'Enter TEXT'
text = gets.chomp
puts 'Enter Key'
key = gets.chomp.to_i
puts 'Enter Method (encrypt / decrypt)'
method = gets.chomp
result = CaesarCipher.new(text:, key:, method:).result
puts result
