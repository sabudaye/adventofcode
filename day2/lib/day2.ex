defmodule Day2 do
  def ex1(input) do
    input
      |> String.split(:erlang.iolist_to_binary([10]), trim: true)
      |> Enum.reduce(0, &_reducer/2)
  end

  defp _reducer(input, acc) do
    [length, width, height] = String.split(input, "x", trim: true)
    [l, w, h] = Enum.map([length, width, height], &String.to_integer &1)

    acc + surface_area(l, w, h) + smallest_side_square(l, w, h)
  end

  defp surface_area(l, w, h) do
    (2 * l * w) + (2 * w * h) + (2 * h * l)
  end

  defp smallest_side_square(l, w, h) do
    Enum.min([l * w, w * h, h * l])
  end
end
