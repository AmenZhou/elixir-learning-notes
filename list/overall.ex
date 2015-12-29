defmodule Overall do
  def product([]) do
    0
  end

  def product(list) do
    product(list, 2)
  end

  def product([], accumulated_product) do
    accumulated_product
  end

  def product([head | tail], accumulated_product) do
    product(tail, head * accumulated_product)
  end
end

# product([1, 2, 3, 4]) =>
# product([1, 2, 3, 4], 2) =>
# product([2, 3, 4], 1 * 2) =>
# product([3, 4], 2 * 2) =>
# product([4], 3 * 4) =>
# product([], 4 * 12) => 48