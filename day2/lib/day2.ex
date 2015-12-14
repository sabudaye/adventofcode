defmodule Day2 do
  def ex1(input) do
    input
      |> String.split("\n", trim: true)
      |> Stream.map(&parse/1)
      |> Enum.reduce(0, &_reducer1/2)
  end

  defp _reducer1([l, w, h], acc) do
    acc + surface_area(l, w, h) + smallest_side_square(l, w, h)
  end

  defp surface_area(l, w, h) do
    (2 * l * w) + (2 * w * h) + (2 * h * l)
  end

  defp smallest_side_square(l, w, h) do
    Enum.min([l * w, w * h, h * l])
  end

  def ex2(input) do
    input
      |> String.split("\n", trim: true)
      |> Stream.map(&parse/1)
      |> Enum.reduce(0, &_reducer2/2)
  end

  defp parse(line) do
    [length, width, height] = String.split(line, "x", trim: true)
    Enum.map([length, width, height], &String.to_integer &1)
  end

  defp _reducer2([l, w, h], acc) do
    acc + l * w * h + Enum.min(distances([{:l, l}, {:w, w}, {:h, h}]))
  end

  defp distances(input) do
    for {f1, a} <- input, {f2, b} <- input do
      if f1 == f2, do: nil, else: a + a + b + b
    end
  end
end
