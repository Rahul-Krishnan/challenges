nouns = ["abcd", "c", "def", "h", "ij", "cde"]
verbs = ["bc", "fg", "g", "hij", "bcd"]
articles = ["a", "ac", "e"]

words = nouns + verbs + articles

# Rules:
# sentence must have all valid words
# sentence must have at least 1 verb
# sentence have at least 1 noun or at least 2 articles

# First make a list of all possible word combos
# Then apply sentence structure rules

string1 = ["abcdefg"]
string2 = ["abcd"]

def compose_sentences(string)
  grammar_check(find_all_word_combos(string))
end

def find_all_word_combos(string)
  letters = string.split('')
  length = letters.length
  sentence_list = []
  first_word = []
  length.times do |n|
    if words.include?(letters[0..n])
      find_all_word_combos(letters[(n+1)..(length-1)])
    end
  end
  sentence_list
end

def grammar_check(sentence_list)
  sentence_list.each do |sentence|
    if verb_check(sentence) && (noun_check || article_check)
    else
      sentence_list.delete(sentence)
    end
  end
  sentence_list
end

def verb_check(sentence)
  verb_count = 0
  sentence.each do |word|
    if verbs.include?(word)
      verb_count += 1
    else
    end
  end
  verb_count > 0
end

def noun_check(sentence)
  noun_count = 0
  sentence.each do |word|
    if nouns.include?(word)
      noun_count += 1
    else
    end
  end
  noun_count > 0
end

def article_check(sentence)
  article_count = 0
  sentence.each do |word|
    if articles.include?(word)
      article_count += 1
    else
    end
  end
  article_count > 1
end
