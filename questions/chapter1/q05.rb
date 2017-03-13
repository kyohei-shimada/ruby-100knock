def ngram(words, n)
  words.each_cons(n).to_a
end

ngram("I am an NLPer".split, 2)
ngram("I am an NLPer".delete(" ").chars, 2)
