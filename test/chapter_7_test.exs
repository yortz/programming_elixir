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

  test "each" do
    Chapter7.each(["some", "example", "for", "you"], fn(x) -> IO.puts x end)
  end

  test "all?" do
    assert Chapter7.all?([2, 4, 6], fn(x) -> rem(x, 2) == 0 end) == true
    assert Chapter7.all?([2, 3, 4], fn(x) -> rem(x, 2) == 0 end) == false
  end

  test "filter" do
    assert Chapter7.filter([1, 2, 3], fn(x) -> rem(x, 2) == 0 end) == [2]
  end

  test "calculate taxes" do
    orders = [
    [ id: 123, ship_to: :NC, net_amount: 100.00 ],
    [ id: 124, ship_to: :OK, net_amount: 35.50 ],
    [ id: 125, ship_to: :TX, net_amount: 24.00 ],
    [ id: 126, ship_to: :TX, net_amount: 44.80 ],
    [ id: 127, ship_to: :NC, net_amount: 25.00 ],
    [ id: 128, ship_to: :MA, net_amount: 10.00 ],
    [ id: 129, ship_to: :CA, net_amount: 102.00 ],
    [ id: 120, ship_to: :NC, net_amount: 50.00 ] ]

    results = [
    [id: 123, ship_to: :NC, net_amount: 100.0, total_amount: 100.075],
    [id: 124, ship_to: :OK, net_amount: 35.5, total_amount: 0],
    [id: 125, ship_to: :TX, net_amount: 24.0, total_amount: 24.08],
    [id: 126, ship_to: :TX, net_amount: 44.8, total_amount: 44.879999999999995],
    [id: 127, ship_to: :NC, net_amount: 25.0, total_amount: 25.075],
    [id: 128, ship_to: :MA, net_amount: 10.0, total_amount: 0],
    [id: 129, ship_to: :CA, net_amount: 102.0, total_amount: 0],
    [id: 120, ship_to: :NC, net_amount: 50.0, total_amount: 50.075]]

    assert Chapter7.calculate_taxes(orders, [ NC: 0.075, TX: 0.08 ]) == results
  end

end
