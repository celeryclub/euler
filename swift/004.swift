// https://projecteuler.net/problem=4

import Darwin

func largestPalindromeProduct(digits: Int) -> Int {
  let largestFactor = Int(pow(10.0, Float(digits))) - 1
  let smallestFactor = Int(pow(10.0, Float(digits - 1)))
  var largestProduct = 0

  for i in reverse(smallestFactor...largestFactor) {
    // If i is less than the square root of the largest product, we have already
    // found the largest product
    if i * i < largestProduct {
      break
    }

    for j in reverse(smallestFactor...i) {
      var product = i * j
      var productString = String(product)

      if String(reverse(productString)) == productString && product > largestProduct {
        largestProduct = product
        // Continue to next iteration of outer loop - no larger products can be
        // found within this iteration
        continue
      }
    }
  }

  return largestProduct
}

println(largestPalindromeProduct(3))
