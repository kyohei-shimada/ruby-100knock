def ngram(words, n)
  words.each_cons(n).to_a
end

word1 = 'paraparaparadise'
word2 = 'paragraph'

x = ngram(word1.chars, 2).uniq
y = ngram(word2.chars, 2).uniq

# 和集合, 積集合， 差集合
x | y
x & y
x - y

x.map(&:join).include?('se')
y.map(&:join).include?('se')
