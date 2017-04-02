# ruby q25.rb < ../../data/uk.txt
require 'pp'

match_data = /^{{基礎情報[^\n]+\n(?<basic_data>.+)^}}$/m.match($stdin.read)
pp match_data[:basic_data].split(/^\|/)
                             .reject(&:empty?)
                             .map {|data| data.split(/ += +/, 2).map(&:chomp) }
                             .to_h