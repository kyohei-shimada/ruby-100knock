sentence = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
sentence.gsub(/\W+/, ' ').split.map(&:length)
