def reverse_words(file)
  File.open(file).each_line do |line|
    # sanitizing line returns
    line = line.gsub(/\R/, "")
    # reversing words unless the line is empty
    puts line.split.reverse.join(' ') unless line.empty?
  end
end

reverse_words('reversewords.data')