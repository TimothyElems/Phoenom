defmodule Phoenom.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :username, :string
      add :body, :string
      add :comments, :string
      add :likes_count, :integer
      add :repost_count, :integer

      timestamps()
    end
  end
end
