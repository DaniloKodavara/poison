defmodule Poison.URL do
  def get_url do
    case HTTPoison.get("http://google.com.br") do
      {:ok, _ } -> IO.puts("A chamada deu certo!")
      {:error, _ } -> IO.puts("A chamada nao deu certo!")
    end
  end
end