// https://projecteuler.net/problem=1

const array = [...Array(1000).keys()]
                .filter(n => n % 5 === 0 || n % 3 === 0)
                .reduce((a, b) => a + b);

console.log(array);
