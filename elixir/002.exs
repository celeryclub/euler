# https://projecteuler.net/problem=2

defmodule EvenFibSums do
  def gte(limit) do
    _gte(limit, 1, 2)
  end

  def _gte(limit, _, b)
    when b >= limit do
    0
  end

  def _gte(limit, a, b)
    when rem(b, 2) === 0 do
    b + _gte(limit, b, a + b)
  end

  def _gte(limit, a, b) do
    _gte(limit, b, a + b)
  end
end

IO.inspect(EvenFibSums.gte(4_000_000))
