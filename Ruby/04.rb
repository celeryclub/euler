# http://projecteuler.net/problem=4

largest = 0

for a in 100..999
  for b in a..999
    product = a * b
    largest = product > largest ? product : largest if product.to_s == product.to_s.reverse
  end
end

puts largest
