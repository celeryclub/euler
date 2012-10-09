# http://projecteuler.net/problem=3

num = 600851475143
sr_num = Math.sqrt(num).ceil
gpf = 1

for i in 1..(sr_num)
  if num % i == 0
    is_prime = true
    for j in 2..(i - 1)
      is_prime = false if i % j == 0
    end
    if is_prime
      gpf = i > gpf ? i : gpf
    end
  end
end

puts gpf
