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
end




