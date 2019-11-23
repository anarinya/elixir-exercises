defmodule Exercises do
  @moduledoc """
  Includes chapter 6 recusion exercises.
  """

  @doc """
  Get the sum of a list of numbers.

  ## Parameters
  - `nums` - A list of numbers.

  ## Examples
      nums = [1, 2, 3, 4, 5]
      Exercises.sum(nums)
      # => 15
  """
  def sum(nums) do
    sum(nums, 0)
  end

  defp sum([], total) do
    total
  end

  defp sum([h|t], total) do
    sum(t, total + h)
  end

  def reduce(list, func) do
    do_reduce(list, func, [])
  end

  defp do_reduce([], _func, acc) do
    acc
  end

  defp do_reduce([h|t], func, acc) do
    do_reduce(t, func, [func.(h)|acc])
  end

  def reverse(list) do
    reverse(list, [])
  end

  defp reverse([], newlist) do
    newlist
  end

  defp reverse([h|t], newlist) do
    reverse(t, [h|newlist])
  end
end

Exercises.reduce [1, 2, 3, 4, 5], fn(num) ->
  num
end
