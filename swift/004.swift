// https://projecteuler.net/problem=4

import Darwin

func largestPalindromeProduct(digits: Int) -> Int {
  let largestFactor = Int(pow(10.0, Float(digits))) - 1
  let smallestFactor = Int(pow(10.0, Float(digits - 1)))
  var largestProduct = 0

  for i in reverse(smallestFactor...largestFactor) {
    for j in reverse(smallestFactor...i) {
      var product = i * j
      var productString = String(product)

      if String(reverse(productString)) == productString && product > largestProduct {
        largestProduct = product
      }
    }
  }
  return largestProduct
}

println(largestPalindromeProduct(3))
