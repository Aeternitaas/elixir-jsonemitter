defmodule Jsonemitter.Router do
  use Jsonemitter.Web, :router

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

  scope "/", Jsonemitter do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", Jsonemitter do
    pipe_through :browser

    get "/user_policy/:id", ResponseController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Jsonemitter do
  #   pipe_through :api
  # end
end
