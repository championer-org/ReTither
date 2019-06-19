defmodule ReTither.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:user_name, :string, null: false)
      add(:email, :string, null: false)
      add(:phone_number, :string, null: false)

      timestamps()
    end
  end
end
