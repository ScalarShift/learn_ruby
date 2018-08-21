def capitalize(word)
  word = word.split("")
  word[0] = word[0].upcase
  return word.join("")
end

$prepositions = ["of" ,"over", "in", "out"]
$conjunctions = ["and", "but"]
$articles = ["a" , "an", "the"]
$non_major_words = $prepositions + $conjunctions + $articles

def titleize(title)
  title = title.split(" ")
  title.each_index {|i| 
    if i == 0 || !$non_major_words.include?(title[i]) || title[i] == "i"
      title[i] = capitalize(title[i])
    end
  }
  return title.join(" ")
end
class Book
 @title = ""

  def title= (new_title)
    @title = titleize(new_title)
  end

  def title
    @title
  end
end
