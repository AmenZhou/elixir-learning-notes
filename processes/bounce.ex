defmodule Bounce do
  #recursive receiving messages
  def report(count) do
    new_count = receive do
      msg -> IO.puts("Received #{count}: #{msg}")
      count + 1
    end
    report(new_count)
  end
end

pid = spawn(Bounce, :report, [1])
send pid, :test
#=> Received 1: test
send pid, :test2
#=> Received 2: test2

#register process
Process.register(pid, :bounce)
send :bounce, :hello
#=> :hello
