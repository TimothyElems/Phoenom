defmodule Phoenom.Timeline.Post do
  use Ecto.Schema
  import Ecto.Changeset

  # figure out what needs to be fixed in twitter comments
  schema "posts" do
    field :body, :string
    field :comments, :integer, default: 0
    field :likes, :integer, default: 0
    field :username, :string, default: "anonymous"
    field :likes_count, :integer, default: 0
    field :repost_count, :integer, default: 0

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body])
    |> validate_required([:body])
    |> validate_length(:body, min: 1, max: 280)
  end
end
