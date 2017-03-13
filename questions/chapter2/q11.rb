# ruby q10.rb < ../../data/hightemp.txt
puts $stdin.map {|line| line.tr("\t", ' ') }
