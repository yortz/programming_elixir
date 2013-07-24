defmodule Chapter8 do

  def ascii([]), do: false
  def ascii(string), do: Enum.all?(string, fn(char) -> char in Enum.to_list(32..126) end)

  def anagram?(word1, word2), do: Enum.sort(word1) == Enum.sort(word2)

end
