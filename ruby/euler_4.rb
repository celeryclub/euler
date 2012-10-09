# http://projecteuler.net/problem=4

largest = 0

for i in 100..999
  for j in i..999
    product = i * j
    if product.to_s == product.to_s.reverse
      largest = product > largest ? product : largest
    end
  end
end

puts largest
