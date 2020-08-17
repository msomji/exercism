defmodule ResistorColor do
  @moduledoc false
   @colors ~w(black brown red orange yellow green blue violet grey white)

  @spec colors() :: list(String.t())
  def colors do
    @colors
  end

  @spec code(String.t()) :: integer()
  def code(color), do: @colors |> Enum.find_index(&(&1 == color))
end
