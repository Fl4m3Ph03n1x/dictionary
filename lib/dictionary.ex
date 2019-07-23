defmodule Dictionary do

  @spec random_word() :: String.t
  def random_word, do: Enum.random(word_list())

  @spec word_list() :: list(String.t)
  def word_list, do:
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)

end
