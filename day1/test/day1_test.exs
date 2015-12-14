defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "calculates floor" do
    assert Day1.solve('(())') == 0
    assert Day1.solve('()()') == 0
    assert Day1.solve('(((') == 3
    assert Day1.solve('(()(()(') == 3
    assert Day1.solve('))(((((') == 3
    assert Day1.solve('())') == -1
    assert Day1.solve('))(') == -1
    assert Day1.solve(')))') == -3
    assert Day1.solve(')())())') == -3
  end

  test "calculates position of basement floor" do
    assert Day1.basement(')') == 1
    assert Day1.basement('()())') == 5
  end
end
