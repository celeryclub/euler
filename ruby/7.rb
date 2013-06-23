# http://projecteuler.net/problem=7

primes = [2]
next_prime_candidate = 3

while primes.size < 6
  # a = next_prime_candidate
  # if (2..(a - 1)).all? { |b| a % b != 0 }
  # if true
  next_is_prime = true
  for i in 2..(next_prime_candidate - 1)
    p next_prime_candidate
    # p "#{next_prime_candidate}, #{i}"
    # p "npc(#{next_prime_candidate}) % i(#{i}) = #{next_prime_candidate % i}"
    if next_prime_candidate % i == 0
      next_is_prime = false
      break
    end
  end
  if next_is_prime
    primes << next_prime_candidate
  end
  next_prime_candidate += 2
  # p next_prime_candidate
end

# p "primes.size: #{primes.size}"
# primes.each_with_index { |prime, i| p "primes[#{i}]: #{prime}" }
p "-"
p primes.last
# p primes[10_000]
