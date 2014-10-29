// https://projecteuler.net/problem=3

import Darwin

func prime(n: Int) -> Bool {
  if n < 2 {
    return false
  }

  if n < 4 {
    return true
  }

  for i in 2...Int(sqrt(Float(n))) {
    if n % i == 0 {
      return false
    }
  }
  return true
}

func gpf(n: Int) -> Int {
  for i in reverse(1...Int(sqrt(Float(n)))) {
    if n % i == 0 && prime(i) {
      return i
    }
  }
  return 0
}

println(gpf(600851475143))
