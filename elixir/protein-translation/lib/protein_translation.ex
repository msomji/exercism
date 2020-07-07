defmodule ProteinTranslation do
  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """
  @spec of_rna(String.t()) :: {atom, list(String.t())}

  def of_rna(rna) do
    {key, value} = spliter(rna, [])
    |> Enum.map(&(of_codon/1))
    |> Enum.map_reduce([], &(reducer/2))

    case Enum.any?(key, fn k -> k === :error end) do
      false -> {:ok, Enum.take_while(value, fn v -> v !== "STOP" end)}
      true  -> {:error, "invalid RNA"}
    end
  end

  defp reducer({:ok, value}, acc), do: {:ok, acc ++ [value]}

  defp reducer({:error, value}, acc), do: {:error, [value]}

  defp spliter(string, arr) do
      cond do
        String.length(string) >= 3 -> spliter(String.slice(string, 3, String.length(string)), arr ++ [String.slice(string, 0,3)])
        true -> arr
      end
  end

  @doc """
  Given a codon, return the corresponding protein

  UGU -> Cysteine
  UGC -> Cysteine
  UUA -> Leucine
  UUG -> Leucine
  AUG -> Methionine
  UUU -> Phenylalanine
  UUC -> Phenylalanine
  UCU -> Serine
  UCC -> Serine
  UCA -> Serine
  UCG -> Serine
  UGG -> Tryptophan
  UAU -> Tyrosine
  UAC -> Tyrosine
  UAA -> STOP
  UAG -> STOP
  UGA -> STOP
  """
  @spec of_codon(String.t()) :: {atom, String.t()}

  def of_codon(codon) do
    case codon do
      "UGU" -> {:ok, "Cysteine"}
      "UGC" ->  {:ok, "Cysteine"}
      "UUA" ->  {:ok, "Leucine"}
      "UUG" ->  {:ok, "Leucine"}
      "AUG" ->  {:ok, "Methionine"}
      "UUU" ->  {:ok, "Phenylalanine"}
      "UUC" ->  {:ok, "Phenylalanine"}
      "UCU" ->  {:ok, "Serine"}
      "UCC" ->  {:ok, "Serine"}
      "UCA" ->  {:ok, "Serine"}
      "UCG" ->  {:ok, "Serine"}
      "UGG" ->  {:ok, "Tryptophan"}
      "UAU" ->  {:ok, "Tyrosine"}
      "UAC" ->  {:ok, "Tyrosine"}
      "UAA" ->  {:ok, "STOP"}
      "UAG" ->  {:ok, "STOP"}
      "UGA" ->  {:ok, "STOP"}
      _     ->  {:error, "invalid codon"}
    end
  end
end
