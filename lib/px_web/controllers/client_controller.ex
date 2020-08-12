defmodule PxWeb.ClientController do
  use PxWeb, :controller

  plug :put_view, PxWeb.PageView

  def index(conn, _params) do
    render(conn, "client.html", title: "Px | Home")
  end
end
