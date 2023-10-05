def caesar_cipher(string, shift_factor)

  string_array = string.split("")

  character_array = string_array.map { |character| character.ord }

  shifted_array = character_array.map do |code|
    if (code >= 97 && code <= 122)
      code = 97 + (code - 97 + shift_factor) % 26
    elsif (code >=65 && code <= 90)
      code = 65 + (code - 65 + shift_factor) % 26
    else
     code
    end 
  end

  encrypted_array = shifted_array.map { |code| code.chr }

  encrypted_string = encrypted_array.join()

  puts encrypted_string
  
end

caesar_cipher("What a string!", 5)