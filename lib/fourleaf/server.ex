defmodule Poison.Server do
  use GenServer

  def start_link(_) do
    GenServer.start_link(Poison.Server, :ok, name: :server)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handler_cast(:get_url, _) do
    Poison.PoisonURL.call
    {:noreply, %{}}
  end
end