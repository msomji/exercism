defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(0) do
    """
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    """
  end
  def verse(number) do
    noun = number == 1 && "bottle" || "bottles"
    pronoun = number == 1 && "it" || "one"
    number_left = number == 1 && "no more" || "#{number - 1}"
    next_noun = number - 1 == 1 && "bottle" || "bottles"

    """
    #{number} #{noun} of beer on the wall, #{number} #{noun} of beer.
    Take #{pronoun} down and pass it around, #{number_left} #{next_noun} of beer on the wall.
    """
  end

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics() do lyrics(99..0) end
  def lyrics(range) do
    range
      |> Enum.map(&verse/1)
      |> Enum.join("\n")
  end
end
