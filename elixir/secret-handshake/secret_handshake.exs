defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    Integer.to_string(code, 2)
      |> String.to_integer
      |> shake()
  end

  def shake(1000), do: ["jump"]
  def shake(100), do: ["close your eyes"]
  def shake(10), do: ["double blink"]
  def shake(1), do: ["wink"]
end
