defmodule Twinder.Plug do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/hello" do
    send_resp(conn, 200, "wolrd")
  end

  post "/hello" do
    send_resp(conn, 200, "Done!! ^_^")
  end

  match _ do
    send_resp(conn, 404, "Not found, oops!!!")
  end
end
