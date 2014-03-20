# finding all prime numbers to 1000
require 'prime'
Prime.each(1000) do |prime|
  print prime
  print ' '
end