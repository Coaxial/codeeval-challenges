
def fizz_buzz_count(fizz, buzz, limit)
  result = []
  (1..limit).each do |n|
    result << "FB" if n % (fizz * buzz) == 0
    result << "F" if n % fizz == 0
    result << "B" if n % buzz == 0
    result << n if result[n - 1].nil?
  end
  result.join(" ")
end

puts fizz_buzz_count(3, 5, 25)