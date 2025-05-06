input = gets.chomp.split(" ")
shift_value = input.pop.to_i
message = input.join(" ")
alphabet = "abcdefghijklmnopqrstuvwxyz"

def is_downcase? (letter)
  letter.downcase == letter
end

def get_letter_index(letter, string)
  letter = letter.downcase
  unless string.include?(letter)
    return "spcc" #spcc stands for special-character
  end
  string.index(letter)
end

def shift_letter (letter_index, shift_value, string, is_downcase)
    new_index = (string.length - (shift_value + letter_index)) * - 1
    unless is_downcase 
      return string[new_index].upcase
    end
    string[new_index]
end

def encrypt(message, shift_value, alphabet)
  encrypted_message = ""
  message.each_char do |char| 
    letter_index = get_letter_index char, alphabet
    if letter_index == "spcc"
      new_letter = char
    else 
      new_letter = shift_letter letter_index, shift_value, alphabet, is_downcase?(char)
    end
    encrypted_message += new_letter
  end
  encrypted_message
end

puts encrypt message, shift_value, alphabet