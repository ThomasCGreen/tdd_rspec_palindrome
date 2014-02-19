class Palindrome
  def palindrome?(input_string)
    string = (input_string.gsub(/[^A-Za-z]/,"")).downcase  # eliminate non alpha characters and make all lowercase
    if string.length >= 2
      characters = string.split('')
      first_character = characters.shift
      last_character = characters.pop
      if (first_character == last_character)
        palindrome?(characters.join)
      else
        return false
      end
    else
      true
    end
  end
end
