defmodule ReTither.Accounts do
  @moduledoc """
  Accounts context
  """
  alias ReTither.Accounts.User
  alias ReTither.Repo

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def change_user(%User{} = user, attrs \\ %{}) do
    User.changeset(user, attrs)
  end

  def list_users do
    Repo.all(User)
  end

  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  def get_user!(id), do: Repo.get!(User, id)

  def delete_user(%User{} = user) do
    Repo.delete(user)
  end
end
