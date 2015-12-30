Enum.each([1, 2, 3], &(IO.puts(&1 * &1)))
#=> 1
#   4
#   9
#   :ok

Enum.map([1, 2, 3], &(&1 * &1))
#=> [1, 4, 9]

four_bits = fn(value) -> (value >= 0) and (value < 16) end
Enum.filter([0, 3, 10, 20], four_bits)
#=> [0, 3, 10]


is_int = fn(value) -> is_integer(value) end
Enum.all?([1, 2, 4], is_int)
#=> true

Enum.any?([1, 2, 4], is_int)
#=> true
