defmodule ReTither.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :user_name, :string
    field :email, :string
    field :phone_number, :string
    timestamps()
  end

  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [
      :user_name,
      :email,
      :phone_number
    ])
    |> validate_required([:phone_number, :user_name, :email])
  end
end
