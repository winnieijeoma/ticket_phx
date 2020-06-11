defmodule Suno.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :attachment, :string, default: "nil"
    field :email, :string
    field :message, :string
    field :name, :string
    field :subject, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:subject, :message, :attachment, :name, :email])
    |> validate_required([:subject, :message, :name, :email])
  end
end
