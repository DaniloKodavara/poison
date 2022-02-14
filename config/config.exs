use Mix.Config

config :elixir_mix, Poison.Schedule, jobs: [
                                           {"* * * * *", fn -> GenServer.cast(:server, :get_url) end}
]