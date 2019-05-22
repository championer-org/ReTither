defmodule ReTitherWeb.UserLive.Show do
  @moduledoc """
     Show User LiveView Module
  """
  use Phoenix.LiveView
  use Phoenix.HTML

  alias Phoenix.LiveView.Socket
  alias ReTither.Accounts
  alias ReTitherWeb.UserView

  def render(assigns), do: UserView.render("show.html", assigns)

  def mount(%{path_params: %{"id" => id}}, socket) do
    {:ok, fetch(assign(socket, id: id))}
  end

  defp fetch(%Socket{assigns: %{id: id}} = socket) do
    assign(socket, user: Accounts.get_user!(id))
  end
end
