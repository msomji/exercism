defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
   @spec numeral(pos_integer) :: String.t()
   def numeral(1000) do "M" end
   def numeral(900) do "CM" end
   def numeral(500) do "D" end
   def numeral(400) do "CD" end
   def numeral(100) do "C" end
   def numeral(50) do "L" end
   def numeral(40) do "XL" end
   def numeral(10) do "X" end
   def numeral(9) do "IX" end
   def numeral(5) do "V" end
   def numeral(4) do "IV" end
   def numeral(1) do "I" end
   def numeral(0) do "" end
   def numeral(number) do
    cond do
      number >= 1000 ->  numeral(1000) <> numeral(number - 1000)
      number >= 900 ->  numeral(900) <> numeral(number - 900)
      number >= 500 ->  numeral(500) <> numeral(number - 500)
      number >= 400 ->  numeral(400) <> numeral(number - 400)
      number >= 100 ->  numeral(100) <> numeral(number - 100)
      number >= 50 ->  numeral(50) <> numeral(number - 50)
      number >= 40 ->  numeral(40) <> numeral(number - 40)
      number >= 10 ->  numeral(10) <> numeral(number - 10)
      number >= 9 ->  numeral(9) <> numeral(number - 9)
      number >= 5 ->  numeral(5) <> numeral(number - 5)
      number >= 4 ->  numeral(4) <> numeral(number - 4)
      number >= 1 ->  numeral(1) <> numeral(number - 1)
      end
 end
end
