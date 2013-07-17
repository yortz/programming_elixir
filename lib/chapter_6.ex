defmodule Chapter6 do
  defmodule Times do
    def double(n), do: n * 2

    def triple(n), do: n * 3
    
    def quadruple(n), do: double(n) * 2

    def sum(0), do: 0

    def sum(n) do
      n  + sum(n-1)
    end

    def gcd(x,0), do: 0

    def gcd(x,y) do
      y * rem(x,y)
    end
  end

  defmodule Chop do

    def guess(actual, range) do
      guess = get_max(range)
      IO.puts "is it #{guess}"
      check(actual, guess, range)
    end

    defp check(actual, guess, range), do: guess

    defp check(actual, guess, min.._max) when actual < guess do
      guess(actual, min..guess-1)
    end

    defp check(actual, guess, _min..max) when actual > guess do
      guess(actual, guess+1..max)
    end

    defp get_max(range) do
      (min..max) = range
      div(min+max, 2)
    end

  end

end

