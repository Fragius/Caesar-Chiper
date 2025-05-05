input = gets.chomp.split(" ")
message = input[0]
shift_value = input[1].to_i
alphabet = "abcdefghijklmnopqrstuvwxyz"

def get_letter_index(letter, string)
  string.index(letter.downcase)
end

def encrypt(message, shift_value, alphabet)
  message.each_char do |char| 
    letter_index = get_letter_index char, alphabet
  end
end

encrypt message, shift_value, alphabet