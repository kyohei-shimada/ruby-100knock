sentence = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'
words = sentence.gsub(/\W+/, ',').split

words.map.with_index(1) {|word, index|
  [1,5,6,7,8,9,15,16,19].include?(index) ? [word[0], word] : [word[0..1], word]
}.to_h
