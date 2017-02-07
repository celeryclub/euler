# https://projecteuler.net/problem=1

defmodule Sums do
  def below(limit), do: _below(limit - 1)

  def _below(0), do: 0

  def _below(current)
    when rem(current, 3) === 0 or rem(current, 5) === 0 do
    current + _below(current - 1)
  end

  def _below(current), do: _below(current - 1)
end

IO.inspect(Sums.below(1000))
