defmodule Day1 do
  def solve(str) do
    solve(str, 0)
  end

  defp solve([], acc) do
    acc
  end
  defp solve(rest, acc) do
    case hd(rest) do
      40 -> solve(tl(rest), acc + 1)
      41 -> solve(tl(rest), acc - 1)
    end
  end

  def basement(str) do
    basement(str, [0, 0])
  end

  defp basement(_rest, [-1, position]) do
    position
  end
  defp basement([], [_acc, position]) do
    position
  end
  defp basement(rest, [acc, position]) do
    case hd(rest) do
      40 -> basement(tl(rest), [acc + 1, position + 1])
      41 -> basement(tl(rest), [acc - 1, position + 1])
    end
  end
end
