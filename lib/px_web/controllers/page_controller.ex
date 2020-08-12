defmodule PxWeb.PageController do
  use PxWeb, :controller

  plug :put_view, PxWeb.PageView

  def index(conn, _params) do
    render(conn, "landing.html", title: "Px")
  end

  def get_signup(conn, _params) do
    render(conn, "signup.html", csrf: get_csrf_token(), title: "Px | Sign Up!")
  end

  def post_signup(conn, _params) do
    redirect(conn, to: "/login")
  end

  def get_login(conn, _params) do
    render(conn, "signin.html", csrf: get_csrf_token(), title: "Px | Log in!")
  end

  def post_login(conn, _params) do
    redirect(conn, to: "/app")
  end
end
