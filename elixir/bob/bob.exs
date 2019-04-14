defmodule Bob do
  def hey(input) do
    cond do
      String.trim(input) == "" -> "Fine. Be that way!"
      !questioning_numbers?(input) && questioning_screaming?(input) -> "Calm down, I know what I'm doing!"
      input == String.upcase(input) && !has_only_numbers?(input) -> "Whoa, chill out!"
      String.ends_with?(input, "?") -> "Sure."
      true -> "Whatever."
    end
  end

  defp questioning_screaming?(i) do
    String.ends_with?(i, "?") && i == String.upcase(i)
  end

  defp questioning_numbers?(i) do
    String.ends_with?(i, "?") && has_only_numbers?(i)
  end

  defp has_only_numbers?(i) do
    String.downcase(i) == String.upcase(i)
  end
end
