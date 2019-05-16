defmodule ReTitherWeb.PageController do
  use ReTitherWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
