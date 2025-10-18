defmodule HeadsUpWeb.TipsController do
  use HeadsUpWeb, :controller
  alias HeadsUp.Tips

  def index(conn, _params) do
    emojis = ~w(💚 💜 💙) |> Enum.random() |> String.duplicate(5)
    tips = Tips.list_tips()
    render(conn, tips: tips, emojis: emojis)
  end

  def show(conn, %{"id" => id}) do
    tip = Tips.get_tip(id)

    render(conn, :show, tip: tip)
  end
end
