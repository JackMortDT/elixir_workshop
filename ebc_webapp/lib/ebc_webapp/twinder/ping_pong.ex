defmodule EbcWebapp.Twinder.PingPong do

  def init() do
    ping = spawn(__MODULE__, :ping, [])
    pong = spawn(__MODULE__, :pong, [])
    send ping, pong
  end

  def ping() do
    receive do
      sender ->
        IO.puts "PONG"
        :timer.sleep(2000)
        send sender, self
    end
    ping()
  end

  def pong() do
    receive do
      sender ->
        IO.puts "PING"
        :timer.sleep(2000)
        send sender, self
    end
    pong()
  end

end
