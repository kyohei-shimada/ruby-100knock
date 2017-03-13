# ruby q12.rb 1 < ../../data/hightemp.txt > ../../data/col1.txt
# ruby q12.rb 2 < ../../data/hightemp.txt > ../../data/col2.txt
require 'csv'

col_number = ARGV[0].to_i - 1
puts CSV.new($stdin, col_sep: "\t").map {|row| row[col_number] }
