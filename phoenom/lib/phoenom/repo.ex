defmodule Phoenom.Repo do
  use Ecto.Repo,
    otp_app: :phoenom,
    adapter: Ecto.Adapters.Postgres
end
