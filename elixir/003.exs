# https://projecteuler.net/problem=3

defmodule PrimeFactors do
  def largest(dividend) do
    square_root = round(:math.sqrt(dividend))
    _largest(dividend, square_root)
  end

  defp _largest(_dividend, 0), do: 0

  defp _largest(dividend, current)
    when rem(dividend, current) === 0 do
    if is_prime(current) do
      current
    else
      _largest(dividend, current - 1)
    end
  end

  defp _largest(dividend, current) do
    _largest(dividend, current - 1)
  end

  defp is_prime(n), do: _is_prime(n, 2)

  defp _is_prime(n, _)
    when n < 2 do
    true
  end

  defp _is_prime(n, n), do: true

  defp _is_prime(n, divisor)
    when rem(n, divisor) === 0 do
    false
  end

  defp _is_prime(n, divisor) do
    _is_prime(n, divisor + 1)
  end
end

IO.inspect(PrimeFactors.largest(600_851_475_143))
