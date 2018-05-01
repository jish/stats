defmodule Stats do
  @moduledoc """
  Calculate some stats on the list of Integers provided
  """

  @doc """
  Add up all of the Integers in the list and return the sum.

  ## Examples

      iex> Stats.sum([1, 2, 3])
      6

  """
  def sum(list) do
    Enum.reduce(list, 0, fn (x, y) -> x + y end)
  end

  @doc """
  Count how many items are in the list

  ## Examples

      iex> Stats.count([1, 2, 3])
      3

  """
  def count(list) do
    length(list)
  end

  @doc """
  Find the median value in the list

  ## Examples

      iex> Stats.average([1, 2, 3])
      2.0

  """
  def average(list) do
    sum(list) / count(list)
  end
end
