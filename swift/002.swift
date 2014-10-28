// https://projecteuler.net/problem=2

func accumSum(total: Int, current: Int, next: Int, limit: Int) -> Int {
  if current < limit {
    var newTotal = current % 2 == 0 ? total + current : total
    return accumSum(newTotal, next, current + next, limit)
  } else {
    return total
  }
}

println(accumSum(0, 1, 2, 4000000))
