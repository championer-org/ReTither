defmodule ReTitherWeb.UserLive.Edit do
  @moduledoc """
     Edit User LiveView Module
  """
  use Phoenix.LiveView

  alias ReTither.Accounts
  alias ReTitherWeb.Router.Helpers, as: Routes
  alias ReTitherWeb.UserLive
  alias ReTitherWeb.UserView

  def mount(%{path_params: %{"id" => id}}, socket) do
    user = Accounts.get_user!(id)

    {:ok,
     assign(socket, %{
       user: user,
       changeset: Accounts.change_user(user)
     })}
  end

  def render(assigns), do: UserView.render("edit.html", assigns)

  def handle_event("validate", %{"user" => params}, socket) do
    changeset =
      socket.assigns.user
      |> Accounts.change_user(params)
      |> Map.put(:action, :update)

    {:noreply, assign(socket, changeset: changeset)}
  end

  def handle_event("save", %{"user" => user_params}, socket) do
    case Accounts.update_user(socket.assigns.user, user_params) do
      {:ok, user} ->
        {:stop,
         socket
         |> put_flash(:info, "User updated successfully.")
         |> redirect(to: Routes.live_path(socket, UserLive.Show, user))}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end
end
