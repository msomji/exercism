defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t(), [String.t()]) :: [String.t()]
  def match(base, candidates) do
    candidates
      |> List.delete(base)
      |> List.delete(String.upcase(base))
      |> List.delete(String.capitalize(base))
      |> Enum.filter(fn word ->
        word
          |> split_sort()
          |> String.equivalent?(split_sort(base))
      end)
  end

  def split_sort(word) do
    word
    |> String.downcase()
    |> String.split("", trim: true)
    |> Enum.sort
  end
end
