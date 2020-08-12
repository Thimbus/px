defmodule PxWeb.Router do
  use PxWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # handle basic pages
  scope "/", PxWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/signup", PageController, :get_signup
    post "/signup", PageController, :post_signup
    get "/login", PageController, :get_login
    post "/login", PageController, :post_login
  end

  # handle /app/ paths
  scope "/app", PxWeb do
    pipe_through :browser

    get "/", ClientController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PxWeb do
  #   pipe_through :api
  # end
end
