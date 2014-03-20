
def fizz_buzz_count(file)
  File.open(file).each_line do |line|
    args = line.split
    fizz = args[0].to_i
    buzz = args[1].to_i
    limit = args[2].to_i

    (1..limit).each do |n|
      print "F" if n % fizz == 0
      print "B" if n % buzz == 0
      print n if n % fizz != 0 && n % buzz != 0
      print " "
    end
    puts
  end
end

puts fizz_buzz_count('fizzbuzz.data')