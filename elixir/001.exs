# https://projecteuler.net/problem=1

defmodule Sums do
  def loop_it(0, sum) do
    sum
  end

  def loop_it(current, sum) do
    if rem(current, 3) === 0 || rem(current, 5) === 0 do
      loop_it(current - 1, sum + current)
    else
      loop_it(current - 1, sum)
    end
  end

  def below(limit) do
    loop_it(limit - 1, 0)
  end
end

# IO.inspect(Sums.below(10))
IO.inspect(Sums.below(1000))
