def encrypt(text)
  # Set an array with all the letters of the alphabet
  abc_array = ("A".."Z").to_a
  # split the text into letters
  string_array = text.upcase.split("")
  # iterate over the letters, see if it IS a letter
  shifted_array = string_array.map do |character|
  # distinguish if letter or a different character
    if abc_array.include?(character)
  # Map the letter to it's left shift (if its a letter), otherwise leave it alone
      new_index = abc_array.index(character) - 3
      abc_array[new_index]
    else
      character
    end
  end
  shifted_array.join
end

encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG") == "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

def decrypt(text)
  # Set an array with all the letters of the alphabet
  abc_array = ("A".."Z").to_a
  # split the text into letters
  string_array = text.upcase.split("")

  decrypt_array = string_array.map do |character|
    if abc_array.include?(character)
      new_index = abc_array.index(character) + 3
      if new_index > 25
        new_index = new_index - abc_array.length
        abc_array[new_index]
      else
        abc_array[new_index]
      end
    else
      character
    end
  end.join
end


# THE LE WAGON SOLUTION

def encrypt(text, permutation_level = -3)
  alphabet = ("A".."Z").to_a
  text.upcase.split("").map do |letter|
    index = alphabet.index(letter)
    index.nil? ? letter : alphabet[(index + permutation_level) % 26]
  end.join
end

def decrypt(text)
  encrypt(text, 3)
end

# For a better answer, read here: https://divisible.info/Modulo/What-is-4-mod-11.html
# http://www.math.stonybrook.edu/~scott/papers/MSTP/crypto/3Caesar_Cipher.html











