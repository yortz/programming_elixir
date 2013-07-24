Code.require_file "test_helper.exs", __DIR__

defmodule Chapter8Test do
  use ExUnit.Case, async: true

  test "return true if all chars in string are valid ASCII" do
    #assert Chapter8.ascii('ab$£~04è') == true
    assert Chapter8.ascii('ab$£~04è üÉ í') == false
    assert Chapter8.ascii('') == false
  end

  test "anagram" do
    assert Chapter8.anagram?('dog', 'god') == true
    assert Chapter8.anagram?('dog', 'cat') == false
  end
end
