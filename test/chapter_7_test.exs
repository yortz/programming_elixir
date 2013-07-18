Code.require_file "test_helper.exs", __DIR__

defmodule Chapter7Test do
  use ExUnit.Case, async: true

  test "sum function without acc" do
    assert Chapter7.sum([1,2,3]) == 6
  end

  test "mapsum" do
    assert Chapter7.mapsum([1, 2, 3], &1 * &1) == 14
  end

  test "get maximum value in list" do
    assert Chapter7.listmax([20, 3, 16]) == 20
  end

  test "adds n to each element of the list, if the addition results in a character greater than z." do
    assert Chapter7.caesar('ryvkve', 13) == 'elixir'
  end

end
