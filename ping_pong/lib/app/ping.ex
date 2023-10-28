defmodule App.Ping do
  def start(), do: wait()

  defp wait() do
    receive do
      {pid, :pong} ->
        send(pid, {self(), :ping})
        IO.puts("Pong received")
    end

    wait()
  end
end
