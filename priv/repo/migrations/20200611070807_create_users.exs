defmodule Suno.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :subject, :string
      add :message, :text
      add :attachment, :string
      add :name, :string
      add :email, :string

      timestamps()
    end

  end
end
