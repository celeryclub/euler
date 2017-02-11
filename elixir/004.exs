# https://projecteuler.net/problem=4

defmodule PalindromicProduct do
  def largest(digits) do
    largest_multiplier = round(:math.pow(10, digits)) - 1
    smallest_multiplier = round(:math.pow(10, digits - 1))

    _largest(smallest_multiplier, largest_multiplier, largest_multiplier, 0)
  end

  def _largest(_, a, b, largest_product)
    when a < 10 and b < 10 do
    largest_product
  end

  def _largest(smallest_multiplier, a, b, largest_product)
    when b < smallest_multiplier do
    _largest(smallest_multiplier, a - 1, a - 1, largest_product)
  end

  def _largest(smallest_multiplier, a, b, largest_product) do
    product_string = Integer.to_string(a * b)

    if product_string === String.reverse(product_string) do
      _largest(smallest_multiplier, a, b - 1, Kernel.max(largest_product, a * b))
    else
      _largest(smallest_multiplier, a, b - 1, largest_product)
    end
  end
end

IO.inspect(PalindromicProduct.largest(3))
