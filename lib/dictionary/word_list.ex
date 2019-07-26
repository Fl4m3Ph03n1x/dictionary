defmodule Dictionary.WordList do

  @spec start_link :: Agent.on_start
  def start_link, do: Agent.start_link(&word_list/0)

  @spec random_word(pid) :: String.t
  def random_word(pid), do: Agent.get(pid, &Enum.random/1)

  @spec word_list :: [String.t, ...]
  def word_list, do:
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)

end
