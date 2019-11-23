"sample.txt"
|> File.stream!
|> Stream.take_every(2)
|> Stream.filter_map(&String.starts_with?(&1, "a"), fn(line) ->
  line |> String.strip |> String.capitalize end)
|> Enum.sort_by(&String.length/1)
|> IO.inspect
