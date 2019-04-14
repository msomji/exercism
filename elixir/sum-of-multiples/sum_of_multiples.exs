defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
    factors
     |> Enum.flat_map(&multiplesTill(&1, limit))
     |> Enum.filter(fn x -> x < limit end)
     |> Enum.uniq()
     |> Enum.sum()
  end


  def multiplesTill(number, limit) do
    Enum.map(Range.new(1,limit), fn x -> number * x end)
  end
end
