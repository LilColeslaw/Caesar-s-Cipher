def cipher(string, shift, encoded = "")
  string.each_char do |character|
    ordinal = character.ord
    if !(ordinal.between?(65, 90) || ordinal.between?(97, 122)) #check for non-letters
      encoded += character
      next #skip the rest
    end
    ordinal += shift
    if (ordinal < 97)
      ordinal -= 26 if ordinal > 90
    else 
      ordinal -= 26 if ordinal > 122
    end
    encoded << ordinal.chr
  end
  encoded
end