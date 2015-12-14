defmodule Day2Test do
  use ExUnit.Case
  doctest Day2

  test "the truth" do
    assert Day2.ex1("2x3x4") == 52 + 6
    assert Day2.ex1("1x1x10") == 42 + 1
    assert Day2.ex1("2x3x4\n1x1x10") == 58 + 43
  end
end
