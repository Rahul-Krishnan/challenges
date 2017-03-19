def count_em_up(text)
  printer(counter(cleanup(text)))
end

def cleanup(text)
  text.downcase.gsub(/\W+/, " ")
end

def counter(text)
  word_count = {}
  words = text.split(" ")
  words.each do |word|
    if word_count.keys.include?(word)
      word_count[word] += 1
    else
      word_count[word] = 1
    end
  end
  word_count
end

def printer(count_hash)
  count_array = []
  count_hash.each do |word, count|
    count_array << [word, count]
  end
  print count_array
end
