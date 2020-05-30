defmodule Grpow.Repo do
  use Ecto.Repo,
    otp_app: :grpow,
    adapter: Ecto.Adapters.Postgres
end
