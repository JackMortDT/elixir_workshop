defmodule EbcWebapp.Twinder.PingPong do

  def init() do
    ping = spawn(__MODULE__, :ping, [])
    pong = spawn(__MODULE__, :pong, [])
    send ping, {:pong, pong}
  end

  def ping() do
    receive do
      {:pong, sender} ->
        IO.puts "PONG"
        :timer.sleep(2000)
        send sender, {:ping, self}
    end
    ping()
  end

  def pong() do
    receive do
      {:ping, sender} ->
        IO.puts "PING"
        :timer.sleep(2000)
        send sender, {:pong, self}
    end
    pong()
  end

end
