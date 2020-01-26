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
    decode(code)
  end

  def decode(code, acc \\[], reverse \\ false) do
    cond do
      code - 16 >= 0 -> decode(code - 16, acc, true)
      code - 8 >= 0 -> decode(code - 8, append(["jump"], acc), reverse)
      code - 4 >= 0 -> decode(code - 4, append(["close your eyes"], acc), reverse)
      code - 2 >= 0 -> decode(code - 2, append(["double blink"], acc), reverse)
      code - 1 >= 0 -> decode(code - 1, append(["wink"], acc), reverse)
      true -> if reverse, do: reverse(acc), else: acc
    end
  end

  @spec append(list, list) :: list
  def append([], a), do: a
  def append([h | t], b), do: [h | append(t, b)]


  @spec reverse(list) :: list
  def reverse(l), do: reverse(l, [])
  def reverse([], acc), do: acc
  def reverse([h | t], acc), do: reverse(t, [h | acc])

end

