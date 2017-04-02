# ruby q25.rb < ../../data/uk.txt
require 'pp'

FILTERS = [
  ->(value) { value.gsub(/('{2,4})(.+?)\1/) { $2 } }, # Q26
  ->(value) { value.gsub(/\[\[(.+?)\]\]/) { $1.split('|').last } }, # Q27
  # Q28
  ->(value) { value.gsub(/<br *\/>/, "\n") }, # 改行コードを置き換え
  ->(value) { value.gsub(/<ref(.*?)>(.+)<\/ref>/m) { $2 } }, # <ref></ref>の除去
  ->(value) { value.gsub(/<ref(.*?)\/>/, '') }, # <ref />の除去
  ->(value) { value.gsub(/{{.+\|.+\|(.+)}}/) { $1 } }, #{{x|y|z}}のz化
  ->(value) { value.gsub(/\[([^ ]+( .+))\]/) { $2 } } # [link text]形式のテキスト化
]

match_data = /^{{基礎情報[^\n]+\n(?<basic_data>.+)^}}$/m.match($stdin.read)
dictionary = match_data[:basic_data].split(/^\|/)
                                    .reject(&:empty?)
                                    .map {|data| data.split(/ += +/, 2).map(&:chomp) }
                                    .to_h

pp dictionary.map {|field, value| 
  [field, FILTERS.inject(value) {|result, filter| filter.call(result) } ]
}.to_h