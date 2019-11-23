defmodule Comps do
  def even(max) do
    for num <- 1..max,
        max > 0,
        rem(num, 2) == 0,
        do: num
  end

  def join(list, separator) do
    for item <- list,
        into: "",
        do: "#{item}#{separator}"
  end

  def join2(list, separator) do
    for item <- list, into: "", do: item <> separator
  end
end
