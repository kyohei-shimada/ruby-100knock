def ngram(words, n)
  words.each_cons(n).to_a
end

word1 = 'paraparaparadise'
word2 = 'paragraph'

x = ngram(word1.chars, 2).sort.uniq
y = ngram(word2.chars, 2).sort.uniq
