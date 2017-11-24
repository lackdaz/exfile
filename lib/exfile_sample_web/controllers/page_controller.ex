defmodule ExfileSampleWeb.PageController do
  use ExfileSampleWeb, :controller


  def index(conn, _params) do
    render conn, "index.html"
  end
end
