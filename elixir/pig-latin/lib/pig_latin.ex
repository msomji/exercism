defmodule PigLatin do
  @doc """
  Given a `phrase`, translate it a word at a time to Pig Latin.

  Words beginning with consonants should have the consonant moved to the end of
  the word, followed by "ay".

  Words beginning with vowels (aeiou) should have "ay" added to the end of the
  word.

  Some groups of letters are treated like consonants, including "ch", "qu",
  "squ", "th", "thr", and "sch".

  Some groups are treated like vowels, including "yt" and "xr".
  """
  @spec translate(phrase :: String.t()) :: String.t()
  def translate(phrase) do
    phrase
      |> String.split(" ", trim: true)
      |> Enum.map(&(String.split(&1, "", trim: true)))
      |> Enum.map(&(translateIt/1))
      |> Enum.join(" ")
  end

  defp translateIt([h|_] = word) when h in ~w(a e i o u), do: word ++ ["ay"]
  defp translateIt(["q", "u"|tail]), do: tail ++ ["quay"]
  defp translateIt(["y", next|_] = word) when next not in ~w(a e i o u), do: word++ ["ay"]
  defp translateIt(["x", next|_]= word) when next not in ~w(a e i o u), do: word ++ ["ay"]
  defp translateIt([h|tail]), do: translateIt(tail ++ [h])

end
