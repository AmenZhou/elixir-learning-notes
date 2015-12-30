defmodule Pascal do
  def triangle(max_row) do
    triangle([1], 1, max_row)
  end

  def triangle(list, count, max_row) when count >= max_row do
    list
  end

  def triangle(list, count, max_row) do
    IO.inspect(list)
    triangle(add_row(list), count + 1, max_row)
  end

  def add_row(list) do
    add_row([0 | list] ++ [0], 0, [])
  end

  def add_row([], 0, final_list) do
    List.delete(final_list, 0)
  end

  def add_row([head | tail], elem, final_list) do
    add_row(tail, head, [head + elem | final_list])
  end
end