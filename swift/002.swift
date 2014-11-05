// https://projecteuler.net/problem=2

func evenFibonacciSum(limit: Int, total: Int = 0, current: Int = 1, next: Int = 2) -> Int {
  if current < limit {
    var newTotal = current % 2 == 0 ? total + current : total
    return evenFibonacciSum(limit, total: newTotal, current: next, next: current + next)
  } else {
    return total
  }
}

println(evenFibonacciSum(4000000))
