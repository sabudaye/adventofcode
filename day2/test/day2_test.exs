defmodule Day2Test do
  use ExUnit.Case
  doctest Day2

  test "ex1" do
    assert Day2.ex1("2x3x4") == 52 + 6
    assert Day2.ex1("1x1x10") == 42 + 1
    assert Day2.ex1("2x3x4\n1x1x10") == 58 + 43
  end

  test "ex2" do
    assert Day2.ex2("2x3x4") == 34
    assert Day2.ex2("1x1x10") == 14
    assert Day2.ex2("2x3x4\n1x1x10") == 48
  end
end
