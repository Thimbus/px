defmodule PxWeb.PageController do
  use PxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
