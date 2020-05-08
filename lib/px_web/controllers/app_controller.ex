defmodule PxWeb.AppController do
  use PxWeb, :controller

  def index(conn, _params) do
    render(conn, "chat.html", layout: {PxWeb.LayoutView, "app.html"})
  end
end
