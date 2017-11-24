defmodule ExfileSampleWeb.Router do
  use ExfileSampleWeb, :router

  forward "/attachments", Exfile.Router

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

  scope "/", ExfileSampleWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    resources "/post", PostController
  end

  # Other scopes may use custom stacks.
  # scope "/api", ExfileSampleWeb do
  #   pipe_through :api
  # end
end
