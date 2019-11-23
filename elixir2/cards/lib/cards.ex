defmodule Cards do
  def create_cards do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Hearts", "Clubs", "Spades", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end
