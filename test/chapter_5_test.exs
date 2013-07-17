Code.require_file "test_helper.exs", __DIR__


defmodule Chapter5 do
  use ExUnit.Case, async: true

  test "concatenates list" do
    list_concat = fn(a,b) -> a ++ b end
    assert list_concat.([1,2,3], [4,5,6]) == [1,2,3,4,5,6]
  end

  test "it sums 3 numbers" do
    sum = fn(a, b, c) -> a + b + c end
    assert sum.(1,2,3) == 6
  end

  test "it pairs a tuple to list" do
    pair_tuple_to_list = fn({a,b}) -> [a,b] end
    assert pair_tuple_to_list.( { 8, 7 } ) == [ 8, 7 ]
  end

  test "if FizzBuzz on three args" do
    fizzbuzz = function do
      (0, 0, c) -> "FizzBuzz"
      (0, b, c) -> "Fizz"
      (a, 0, c) -> "Buzz"
      (a, b, c) -> c
    end
    assert fizzbuzz.(0,0, "third_param") == "FizzBuzz"
    assert fizzbuzz.(0, "second_param", "third_param") == "Fizz"
    assert fizzbuzz.("first_param", 0, "third_param") == "Buzz"
    assert fizzbuzz.("first_param", "second_param", "third_param") == "third_param"
  end

  test "prefix" do 
    prefix = fn(string) -> fn(other) -> "#{string} #{other}" end end
    assert prefix.("Elixir").("Rocks") == "Elixir Rocks"
  end

  #test "rand" do
    #remainder = function do
      #(n) -> rem(n,3)
      #(n) -> rem(n,5)
      #(n) -> n
    #end
    #IO.puts remainder.(7)
  #end
end
