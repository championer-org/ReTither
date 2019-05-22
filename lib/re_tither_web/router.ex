defmodule ReTitherWeb.Router do
  use ReTitherWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ReTitherWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/users/new", UserLive.New
    live "/user/index", UserLive.Index
    live "/users/:id", UserLive.Show
    live "/users/:id/edit", UserLive.Edit
  end

  # Other scopes may use custom stacks.
  # scope "/api", ReTitherWeb do
  #   pipe_through :api
  # end
end
