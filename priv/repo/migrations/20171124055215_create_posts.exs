defmodule ExfileSample.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :text
      add :photo, :string

      timestamps()
    end
  end
end
