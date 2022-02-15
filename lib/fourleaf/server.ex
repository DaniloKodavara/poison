defmodule Poison.Server do
  use GenServer

  def start_link(_) do
    GenServer.start_link(Poison.Server, :ok, name: :server)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_cast(:get_url, _) do
    Poison.URL.get_url
    {:noreply, %{}}
  end
end