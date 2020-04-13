defmodule PxWeb.ApiController do
  use PxWeb, :controller
  
  # check request headers to see if they're different when
  # using fetch() vs when opening /api directly in the browser.
  # Don't think you're supposed to send any response if
  # the request headers ask for text/html only?
  # not sure, read up on that.
  def index(conn, _params) do
    conn
    |> json(Jason.encode!(%{oh: "ok", ohh: "okay"}))
  end
end
  