# ruby questions/q19.rb < data/hightemp.txt
prefectures = $stdin.map {|line| line.split("\t").first }
prefecture_counter = prefectures.group_by {|prefecture| prefecture }
                                .map {|key, value| [key, value.size]}
                                .sort {|a, b| b.reverse <=> a.reverse }
                                .to_h

prefecture_counter.each do |prefecture, count|
  puts "#{count}\t#{prefecture}"
end
