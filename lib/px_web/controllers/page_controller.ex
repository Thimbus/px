defmodule PxWeb.PageController do
  use PxWeb, :controller

  def index(conn, _params) do
    render(conn, "landing.html", layout: {PxWeb.LayoutView, "index.html"})
  end

  def new(conn, _params) do
    render(conn, "signup.html", layout: {PxWeb.LayoutView, "index.html"})
  end

  def login(conn, _params) do
    render(conn, "login.html", layout: {PxWeb.LayoutView, "index.html"})
  end
end
