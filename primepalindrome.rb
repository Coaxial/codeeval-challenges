# finding all palindrome prime numbers to 1000
require 'prime'
Prime.reverse_each(1000) do |prime|
  if prime.to_s == prime.to_s.reverse
    print prime
    break
  end
end

