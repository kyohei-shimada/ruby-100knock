# ruby q16.rb 3 < ../data/hightemp.txt
$stdin.each_slice(ARGV[0].to_i).with_object((ARGV[1] || 'xaa').dup) do |sliced_lines, filename|
  File.open(filename, 'w') {|f| f.write(sliced_lines.join) }
  filename.next!
end
