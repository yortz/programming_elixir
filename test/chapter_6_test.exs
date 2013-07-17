Code.require_file "test_helper.exs", __DIR__


defmodule Chapter6 do
  use ExUnit.Case, async: true

  test "it triples number" do
    assert Chapter6.Times.triple(2) == 6
  end

  test "it quadruples number" do
    assert Chapter6.Times.quadruple(2) == 8
  end

  test "sums numbers up to n" do
    assert Chapter6.Times.sum(0) == 0
    assert Chapter6.Times.sum(5) == 15
  end

  test "finds the greatest common divisor between two nonnegative integers" do
    assert Chapter6.Times.gcd(2, 0) == 0
    assert Chapter6.Times.gcd(2, 3) == 6
  end

  test "guess a number between 1 and 1000" do
    #assert Chapter6.Chop.guess(273, 1..1000) == "is it 500"
  end

  test "converts a float to 2 digits string" do
    assert float_to_binary(2.00, [{:decimals, 2}]) == "2.00"
  end

  test "prints out an ENV var" do
    assert System.get_env("EDITOR") == "/usr/bin/vim"
  end

  test "gets file extension" do
    assert Path.extname("foo.erl") == ".erl"
  end

  test "gets process dir" do
    assert System.cwd == "/Users/federicocortini/code/github/programming_elixir"
  end
end
