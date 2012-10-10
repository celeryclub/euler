# http://projecteuler.net/problem=7

nth_prime = prime_count = 0
a = 2

while prime_count < 10001
  if (2..(a - 1)).all? { |b| a % b != 0 }
    nth_prime = a
    prime_count += 1
  end
  a += 1
end

p nth_prime
