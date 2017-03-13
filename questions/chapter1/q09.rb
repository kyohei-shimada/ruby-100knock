sentence = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."

sentence.split.map {|word|
  next word if word.length <= 4
  word[0] + word[1..-2].chars.shuffle.join + word[-1]
}.join(' ')
