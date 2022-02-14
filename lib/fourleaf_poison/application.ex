defmodule Poison.Application do
  use Application

  def start(_type, _args) do
    children = [
      Poison.Server,
      Poison.Schedule
    ]

    opts = [
      strategy: :one_for_one,
      name: Poison.Supervisor
    ]
    Supervisor.start_link(children, opts)
  end
end
