defmodule Phoenom.TimelineFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Phoenom.Timeline` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        comments: "some comments",
        username: "some username",
        likes_count: 42,
        repost_count: 42
      })
      |> Phoenom.Timeline.create_post()

    post
  end
end
