# ruby q17.rb < ../../data/hightemp.txt
puts $stdin.map {|line| line.split("\t").first }.sort.uniq
