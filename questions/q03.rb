sentence = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
sentence.delete('.,').split.map(&:length)
