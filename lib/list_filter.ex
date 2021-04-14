defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ListFilter.hello()
      :world

  """
  def call(list) do
    list
    |> get_numeric()
    |> count_odd()
  end

  defp get_numeric(list) do
    Enum.flat_map(list, fn x ->
      case Integer.parse(x) do
        # transform to integer
        {int, _rest} -> [int]
        # skip the value
        :error -> []
      end
    end)
  end

  defp count_odd(list) do
    Enum.count(list, fn x ->
      rem(x, 2) == 1
    end)
  end
end
