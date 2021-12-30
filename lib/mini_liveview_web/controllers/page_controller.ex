defmodule MiniLiveviewWeb.PageController do
  use MiniLiveviewWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
