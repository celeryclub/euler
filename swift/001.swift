// https://projecteuler.net/problem=1

var total = 0
for i in 1..<1000 {
  if i % 3 == 0 || i % 5 == 0 {
    total += i
  }
}

println(total)
