# データ構造に対する指定は特になかったので， ['a', 'b'] を 'a' と 'b' の文字bi-gramとして表現している

def ngram(words, n)
  words.each_cons(n).to_a
end

word1 = 'paraparaparadise'
word2 = 'paragraph'

# X, Yの導出
x = ngram(word1.chars, 2).uniq
y = ngram(word2.chars, 2).uniq

# 和集合, 積集合， 差集合
x | y
x & y
x - y

# 'se' が含まれているか
x.include?(['s', 'e'])
y.include?(['s', 'e'])
