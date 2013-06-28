# http://projecteuler.net/problem=6

square_sum = sum = 0

for i in 1..100
  sum += i
  square_sum += i * i
end

p sum * sum - square_sum
