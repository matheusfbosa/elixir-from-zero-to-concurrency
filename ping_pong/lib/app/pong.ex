defmodule App.Pong do
  def start(), do: wait()

  defp wait() do
    receive do
      {pid, :ping} ->
        send(pid, {self(), :pong})
        IO.puts("Ping received")
    end

    wait()
  end
end
