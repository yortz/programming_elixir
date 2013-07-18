Code.require_file "test_helper.exs", __DIR__

defmodule Chapter7Test do
  use ExUnit.Case, async: true

  test "sum function without acc" do
    assert Chapter7.sum([1,2,3]) == 6
  end
end
