# http://projecteuler.net/problem=2

a = 1
sum = b = 2

while b < 4000000
  n = a + b
  a = b
  b = n
  sum += b if b % 2 == 0
end

puts sum
