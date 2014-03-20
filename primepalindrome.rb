# finding all palindrome prime numbers to 1000
require 'prime'
Prime.each(1000) do |prime|
  print "#{prime} " if prime.to_s == prime.to_s.reverse
end