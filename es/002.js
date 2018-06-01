// https://projecteuler.net/problem=2

const fibSum = (max, a = 1, b = 2, list = []) => {
  const newList = list.concat(a)

  if (a > max) {
    return newList
             .filter(n => n % 2 === 0)
             .reduce((a, b) => a + b)
  }

  return fibSum(max, b, b + a, newList)
}

console.log(fibSum(4000000))
