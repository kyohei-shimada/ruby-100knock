# ruby q13.rb ../data/col1.txt ../data/col2.txt
files = ARGV.map {|file_path| File.open(file_path) }
puts files.map(&:readlines).transpose.map {|row| row.map(&:chomp).join("\t") }
