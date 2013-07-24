defmodule Chapter7 do

  def sum([]), do: 0
  def sum([head|tail]), do: head + sum(tail)

  def mapsum([], _func), do: 0
  def mapsum([head|tail], func), do: func.(head) + mapsum(tail, func)

  def listmax([x]), do: x
  def listmax([head|tail]), do: max(head, listmax(tail))

  @doc """
    122 is z
    iex> ?z
  """
  def caesar([], _n), do: []
  def caesar([ head | tail ], n) when head+n <= 122, do: [ head+n | caesar(tail, n) ]
  def caesar([ head | tail ], n), do: [ head+n-26 | caesar(tail, n)]

  def each([], _func), do: []
  def each([head|tail], func), do: [ func.(head) | each(tail, func) ]

  def all?([], _func), do: true
  def all?([head|tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def filter([], func), do: []
  def filter([head|tail], func) do
    if func.(head)  do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  def get_prime(n) do
    lc prime inlist Enum.to_list((2..n)), rem(prime, 2)  == 1, do: prime
  end

  def calculate_taxes([], _taxes), do: []
  def calculate_taxes([head|tail], taxes) do
    [check_location(head, taxes) | calculate_taxes(tail, taxes)]
  end

  defp check_location(order, taxes) do
    if Keyword.get(order, :ship_to) in Keyword.keys(taxes) do
      order ++ [total_amount: calculate_amount(order, taxes)]
    else
      order ++ [total_amount: 0]
    end
  end

  defp calculate_amount(order, taxes) do
    location = Keyword.get(order, :ship_to)
    Keyword.get(taxes, location) + Keyword.get(order, :net_amount)
  end

end




