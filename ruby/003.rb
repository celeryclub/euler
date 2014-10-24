# http://projecteuler.net/problem=3

num = 600851475143
sr_num = Math.sqrt(num).ceil
gpf = 1

for a in 1..(sr_num)
  if num % a == 0
    gpf = a > gpf ? a : gpf if (2..(a - 1)).all? { |b| a % b != 0 }
  end
end

puts gpf
