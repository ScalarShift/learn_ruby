def vowel?(letter)
  return letter.sub(/[aeiouy]/, "*") == "*"
end

def first_vowel_index(word)
  if vowel?(word[0])
    return 0
  end
  first_vowel_index = 1
  while !vowel?(word[first_vowel_index]) || (word[first_vowel_index-1] == "q" && word[first_vowel_index] == "u") do
    first_vowel_index += 1
  end
  return first_vowel_index
end

def translate_word(word)
  first_vowel_index = first_vowel_index(word)
  word = word.split("")
  first_vowel_index.times do
    move_letter = word.shift()
    word = word.push(move_letter)
  end
  return word.join("") + "ay"
end

def translate(message)
  message = message.downcase.split(" ")
  message = message.map { |word|
    word = translate_word(word);
  }
  return message.join(" ")
end
