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
    get "/signup", PageController, :new
    get "/login", PageController, :login # ummm not sure what fn name is supposed to match this path :/
  end

  # handle /app/ paths
  scope "/app", PxWeb do
    pipe_through :browser

    get "/", AppController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PxWeb do
  #   pipe_through :api
  # end
end
