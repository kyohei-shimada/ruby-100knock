# ruby q20.rb < ../../data/jawiki-country.json > ../../data/uk.txt
require 'json'

puts $stdin.map {|line| JSON.parse(line) }
           .find {|json| json.fetch('title') == 'イギリス' }
           .fetch('text')