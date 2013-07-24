Code.require_file "test_helper.exs", __DIR__

defmodule Chapter8Test do
  use ExUnit.Case, async: true

  test "ASCII string" do
    Chapter8.ascii('ab$£~04è')
  end
end
