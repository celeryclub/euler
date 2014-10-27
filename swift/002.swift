// https://projecteuler.net/problem=2

var current = 1
var next = 2
var sum = 0
var tmp: Int

while current < 4000000 {
  if current % 2 == 0 {
    sum += current
  }

  tmp = current
  current = next
  next = tmp + next
}

println(sum)
