defmodule Dictionary.WordList do
  use Agent

  @me __MODULE__

  @spec start_link(any) :: Agent.on_start
  def start_link(_args), do: Agent.start_link(&word_list/0, name: @me)

  @spec random_word() :: String.t
  def random_word, do: Agent.get(@me, &Enum.random/1)

  @spec word_list :: [String.t, ...]
  defp word_list, do:
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)

end
