input = gets.chomp.split(" ")
message = input[0]
shift_value = input[1].to_i
alphabet = "abcdefghijklmnopqrstuvwxyz"

def is_downcase?(letter)
  letter == letter.downcase
end

def get_letter_index(letter, string)
  unless is_downcase? letter
    return string.upcase.index(letter)
  end
  string.index(letter)
end

def encrypt(message, shift_value, alphabet)
  message.each_char do |char| 
    letter_index = get_letter_index char, alphabet
  end
end

encrypt message, shift_value, alphabet