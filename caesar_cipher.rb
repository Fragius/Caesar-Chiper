input = gets.chomp.split(" ")
message = input[0]
shift_value = input[1].to_i
alphabet = "abcdefghijklmnopqrstuvwxyz"

def is_downcase? (letter)
  letter.downcase == letter
end

def get_letter_index(letter, string)
  string.index(letter.downcase)
end

def shift_letter (letter_index, shift_value, string, is_downcase)
    new_index = (string.length - (shift_value + letter_index)) * -1
    unless is_downcase 
      return string[new_index].upcase
    end
    string[new_index]
end

def encrypt(message, shift_value, alphabet)
  encrypted_message = ""
  message.each_char do |char| 
    letter_index = get_letter_index char, alphabet
    new_letter = shift_letter letter_index, shift_value, alphabet, is_downcase?(char)
    encrypted_message += new_letter
  end
  encrypted_message
end

puts encrypt message, shift_value, alphabet