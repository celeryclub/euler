# http://projecteuler.net/problem=2

a = 1
b = 2
sum = b

while b < 4000000
  n = a+b
  a = b
  b = n
  sum += b if b % 2 == 0
end

puts sum
