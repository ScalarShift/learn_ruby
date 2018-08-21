def echo(message)
  return message
end

def shout(message)
  return message.upcase
end

def repeat(message, number_of_times=2)
  repeat_message = ""
  number_of_times.times do
    repeat_message += "#{message} "
  end
  return repeat_message.strip!
end

def start_of_word(word, number_of_letters = 1)
  return word.slice(0,number_of_letters)
end

def first_word(message)
  return message.split(" ")[0]
end

def capitalize(word)
  word = word.split("")
  word[0] = word[0].upcase
  return word.join("")
end

$proper_nouns = ["kwai"]

def titleize(title)
  title = title.split(" ")
  title.each_index {|i| 
    if i == 0 || title[i].length > 4 || $proper_nouns.include?(title[i])
      title[i] = capitalize(title[i])
    end
  }
  return title.join(" ")
end
