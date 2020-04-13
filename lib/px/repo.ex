defmodule Px.Repo do
  use Ecto.Repo,
    otp_app: :px,
    adapter: Ecto.Adapters.Postgres
end
