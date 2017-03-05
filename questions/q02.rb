s1 = 'パトカー'
s2 = 'タクシー'

s1.chars.zip(s2.chars).map(&:join).join
