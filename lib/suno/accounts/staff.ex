defmodule Suno.Accounts.Staff do
  use Ecto.Schema
  import Ecto.Changeset

  schema "staffs" do
    field :category, :string
    field :name, :string
    field :priority, :string
    field :status, :string

    timestamps()
  end

  @doc false
  def changeset(staff, attrs) do
    staff
    |> cast(attrs, [:name, :status, :category, :priority])
    |> validate_required([:name, :status, :category, :priority])
  end
end
