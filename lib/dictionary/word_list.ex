defmodule Dictionary.WordList do

  @spec random_word([String.t, ...]) :: String.t
  def random_word(list), do: Enum.random(list)

  @spec start() :: [String.t, ...]
  def start, do:
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)

end
