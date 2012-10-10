# http://projecteuler.net/problem=3

num = 600851475143
sr_num = Math.sqrt(num).ceil
gpf = 1

for i in 1..(sr_num)
  if num % i == 0
    gpf = i > gpf ? i : gpf if (2..(i - 1)).all? { |j| i % j != 0 }
  end
end

puts gpf
