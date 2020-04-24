defmodule PxWeb.ApiController do
  use PxWeb, :controller

  # check request headers to see if they're different when
  # using fetch() vs when opening /api directly in the browser.
  # Don't think you're supposed to send any response if
  # the request headers ask for text/html only?
  # not sure, read up on that.
  def index(conn, _params) do
    IO.puts "\n==================\n"
    IO.inspect conn
    IO.puts "\n==================\n"

    conn
    |> json(Jason.encode!(%{oh: "ok", ohh: "okay"}))
  end

  def show(conn, name) do
    conn
    |> json(Jason.encode!(name))
  end
end
