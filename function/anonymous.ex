defmodule Hof do
  def tripler(value, function) do
    3 * function.(value)
  end
end

#Approach 1
my_function = fn(value) -> 20 * value end
Hof.tripler(6, my_function)

#Approach 2
Hof.tripler(6, fn(value) -> 20 * value end)

#Approach 3
ampersand_function = &(20 * &1)
Hof.tripler(6, ampersand_function)
