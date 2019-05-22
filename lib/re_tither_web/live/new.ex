defmodule ReTitherWeb.UserLive.New do
  @moduledoc """
     New User LiveView Module
  """
  use Phoenix.LiveView

  alias ReTither.Accounts
  alias ReTither.Accounts.User
  alias ReTitherWeb.Router.Helpers, as: Routes
  alias ReTitherWeb.UserLive
  alias ReTitherWeb.UserView

  def mount(_session, socket) do
    {:ok,
     assign(socket, %{
       changeset: Accounts.change_user(%User{})
     })}
  end

  def render(assigns), do: UserView.render("new.html", assigns)

  def handle_event("validate", %{"user" => params}, socket) do
    changeset =
      %User{}
      |> Accounts.change_user(params)
      |> Map.put(:action, :insert)

    {:noreply, assign(socket, changeset: changeset)}
  end

  def handle_event("save", %{"user" => user_params}, socket) do
    case Accounts.create_user(user_params) do
      {:ok, user} ->
        {:stop,
         socket
         |> put_flash(:info, "User created successfully.")
         |> redirect(to: Routes.live_path(socket, UserLive.Show, user))}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end
end
