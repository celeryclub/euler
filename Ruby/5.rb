# http://projecteuler.net/problem=5

divisible_by_all = false
smallest = 0

while !divisible_by_all
  smallest += 2520
  divisible_by_all = (11..20).all? { |i| smallest % i == 0 }
end

puts smallest
