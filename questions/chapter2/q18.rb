# ruby q18.rb < ../../data/hightemp.txt
require 'csv'

table = CSV.new($stdin, col_sep: "\t").read
puts table.sort {|row1, row2| row2[2].to_f <=> row1[2].to_f }.map {|row| row.join("\t") }
