// https://projecteuler.net/problem=3

const isPrime = (n: number): boolean => {
  return [...Array(n).keys()].slice(2).every(e => n % e !== 0)
}

const greatestPrimeFactor = (n: number): number => {
  const squareRoot = Math.floor(Math.sqrt(n))
  const potentialFactors = [...Array(squareRoot).keys()].reverse()

  for (let factor of potentialFactors) {
    if (n % factor === 0 && isPrime(factor)) {
      return factor
    }
  }

  return 0
}

console.log(greatestPrimeFactor(600851475143))
