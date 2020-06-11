defmodule Suno.Repo do
  use Ecto.Repo,
    otp_app: :suno,
    adapter: Ecto.Adapters.Postgres
end
