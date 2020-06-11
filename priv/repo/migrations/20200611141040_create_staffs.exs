defmodule Suno.Repo.Migrations.CreateStaffs do
  use Ecto.Migration

  def change do
    create table(:staffs) do
      add :name, :string
      add :status, :string
      add :category, :string
      add :priority, :string

      timestamps()
    end

  end
end
