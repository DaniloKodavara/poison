use Mix.Config

config :poison, Poison.Schedule, jobs: [
                                           {"* * * * *", fn -> GenServer.cast(:server, :get_url) end}
]