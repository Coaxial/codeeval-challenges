require 'prime'
result = 0
Prime.first(1000).each do |prime|
  result += prime
end
print result