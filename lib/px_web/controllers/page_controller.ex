defmodule PxWeb.PageController do
  use PxWeb, :controller

  def index(conn, _params) do
    render(conn, "landing.html", layout: {PxWeb.LayoutView, "index.html"})
  end

  def get_signup(conn, _params) do
    render(conn, "signup.html", layout: {PxWeb.LayoutView, "index.html"}, csrf: get_csrf_token())
  end

  def post_signup(conn, params) do
    IO.puts "----- PARAMS -----"
    IO.inspect params
    IO.puts "----- CONN -----"
    IO.inspect conn
    redirect(conn, to: "/login")
  end

  def get_login(conn, _params) do
    render(conn, "login.html", layout: {PxWeb.LayoutView, "index.html"}, csrf: get_csrf_token())
  end

  def post_login(conn, params) do
    IO.puts "----- PARAMS -----"
    IO.inspect params
    IO.puts "----- CONN -----"
    IO.inspect conn
    redirect(conn, to: "/app")
  end
end
