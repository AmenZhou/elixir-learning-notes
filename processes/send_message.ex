send self(), {:hello, "world"}

receive do
  {:hello, msg} -> msg
after
  "do something else"
end
