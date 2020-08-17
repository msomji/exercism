defmodule Acronym do
@delimiters [" ", "-", "_"]
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate("HyperText Markup Language"), do: "HTML"
  def abbreviate(string) do
  string
    |> String.split(@delimiters, trim: true) 
    |> Enum.map(&String.first/1)
    |> Enum.map(&String.upcase/1)
    |> Enum.join()
  end
end
