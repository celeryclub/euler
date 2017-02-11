# https://projecteuler.net/problem=4

defmodule PalindromicProduct do
  def largest(digits) do
    largest_multiplier = round(:math.pow(10, digits)) - 1
    smallest_multiplier = round(:math.pow(10, digits - 1))

    _largest(smallest_multiplier, largest_multiplier, largest_multiplier)
  end

  def _largest(smallest_multiplier, a, b)
    when b < smallest_multiplier do
    _largest(smallest_multiplier, a - 1, a - 1)
  end

  def _largest(smallest_multiplier, a, b) do
    product_string = Integer.to_string(a * b)

    if product_string === String.reverse(product_string) do
      a * b
    else
      _largest(smallest_multiplier, a, b - 1)
    end
  end
end

IO.inspect(PalindromicProduct.largest(3))
