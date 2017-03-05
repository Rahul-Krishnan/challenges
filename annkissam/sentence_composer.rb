# Rules:
# sentence must have all valid words
# sentence must have at least 1 verb
# sentence have at least 1 noun or at least 2 articles
#
# Plan:
# First make a list of all possible sentence word combos
# Then apply sentence structure rules to filter bad sentences out

def compose_sentences(text)
  nouns = ["abcd", "c", "def", "h", "ij", "cde"]
  verbs = ["bc", "fg", "g", "hij", "bcd"]
  articles = ["a", "ac", "e"]

  dictionary = nouns + verbs + articles
  all_sentences = find_all_word_combos(cleanup(text), dictionary)
  grammar_check(all_sentences, nouns, verbs, articles)
end

def cleanup(text)
  text.downcase.gsub(/\W+/, "")
end

def find_all_word_combos(string, dictionary)
  sentence_list = []
  length = string.length
  length.times do |n|
    first_word = string[0..n]
    if dictionary.include?(first_word)
      sentence = ""
      sentence += string[0..n] + " "
      end_piece = string[(n+1)..(length-1)]
      if end_piece == ""
        sentence_list << sentence
      elsif dictionary.include?(end_piece)
        sentence += end_piece
        sentence_list << sentence
      else
        sub_sentence_list = find_all_word_combos(end_piece, dictionary)
        sub_sentence_list.each do |sub_sentence|
          sub_sentence.prepend(sentence)
        end
        sentence_list += sub_sentence_list
      end
    end
  end
  sentence_list
end

def grammar_check(sentence_list, nouns, verbs, articles)
  approved_sentence_list = []
  sentence_list.each do |sentence|
    sentence.strip!
    if word_check(sentence, verbs, 1) && (word_check(sentence, nouns, 1) || word_check(sentence, articles, 2))
      approved_sentence_list << sentence
    else
    end
  end
  approved_sentence_list
end

def word_check(sentence, word_array, min_count)
  word_count = 0
  words = sentence.split(" ")
  words.each do |word|
    if word_array.include?(word)
      word_count += 1
    else
    end
  end
  word_count >= min_count
end
