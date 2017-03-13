def cipher(plain_text)
  plain_text.gsub(/([a-z])/) {|x| (219 - Regexp.last_match(0).bytes.first).chr }
end

cipher("abcdefgABCDEFGあああ01234%&*(") # => "zyxwvutABCDEFGあああ01234%&*("
cipher("zyxwvutABCDEFGあああ01234%&*(") # => "abcdefgABCDEFGあああ01234%&*("
