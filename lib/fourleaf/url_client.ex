defmodule Poison.URL do
  use HTTPoison

  def get_url do
    case HTTPoison.get!("http://google.com.br") do
      {:ok, response} -> IO.puts("A chamada de certo!")
      {:error, _ } -> IO.puts("A chamada nao deu certo!")
    end
  end
end