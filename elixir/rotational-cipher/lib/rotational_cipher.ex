defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
      text
      |> String.to_charlist()
      |> Enum.map(&(rot(&1, shift)))
      |> List.to_string()
  end

  def rot(char, 0), do: char
  def rot(char, move) when (?a <= char and char < ?z) or (?A <= char and char < ?Z), do: rot(char + 1, move-1)
  def rot(char, move) when char === ?z, do: rot(?a, move-1)
  def rot(char, move) when char === ?Z, do: rot(?A, move-1)
  def rot(char, _), do: char

end

