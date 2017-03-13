# ruby q15.rb 3 < ../data/hightemp.txt
puts $stdin.reverse_each.take(ARGV[0].to_i).reverse
