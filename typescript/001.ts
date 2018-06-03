// https://projecteuler.net/problem=1

const threeFiveSum = (upTo: number): number => {
  return [...Array(upTo).keys()]
    .filter(n => n % 5 === 0 || n % 3 === 0)
    .reduce((a, b) => a + b)
}

console.log(threeFiveSum(1000))
