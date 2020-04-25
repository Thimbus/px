defmodule PxWeb.ChatController do
  use PxWeb, :controller

  def index(conn, _params) do
    render(conn, "chat.html")
  end
end
