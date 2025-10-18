defmodule HeadsUp.Tips do
  def list_tips do
    [
      %{
        id: 1,
        text: "Slow is smooth, smooth is fast"
      },
      %{
        id: 2,
        text: "Working with a buddy is always a smart move"
      },
      %{
        id: 3,
        text: "Take it easy and enjoy"
      },
      %{
        id: 4,
        text: "Don't be afraid to hit it and quit it"
      }
    ]
  end

  def get_tip(id) when is_integer(id) do
    tip = Enum.find(list_tips(), fn tip -> tip.id == id end)
  end

  def get_tip(id) when is_binary(id) do
    id |> String.to_integer() |> get_tip()
  end
end
