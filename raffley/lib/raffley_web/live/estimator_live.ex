defmodule RaffleyWeb.EstimatorLive do
  use RaffleyWeb, :live_view

  def mount(_params, _session, socket) do
    # can be inside the tuple
    socket = assign(socket, tickets: 0, price: 3)

    IO.inspect(socket)

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <div class="estimator">
        <h1>Raffle Estimator</h1>
        <section>
        <button phx-click="add_ticket" phx-value-quantity="5">
          +
        </button>
        <button phx-click="subtract_ticket" phx-value-quantity="5">
          -
        </button>
          <div>
            {@tickets}
          </div>
          @
        <button phx-click="add_price" phx-value-quantity="1">
          +
        </button>
        <button phx-click="subtract_price" phx-value-quantity="1">
          -
        </button>
          <div>
            ${@price}
          </div>
          =
          <div>
            ${@tickets * @price}
          </div>
        </section>
      </div>
    """
  end

  # handle event
  def handle_event("add_ticket", %{"quantity" => quantity}, socket) do
    # tickets = socket.assigns.tickets + 1
    # socket = assign(socket, :tickets, tickets)
    socket = update(socket, :tickets, &(&1 + String.to_integer(quantity)))

    {:noreply, socket}
  end

  def handle_event("subtract_ticket", %{"quantity" => quantity}, socket) do
    socket = update(socket, :tickets, &(&1 - String.to_integer(quantity)))

    {:noreply, socket}
  end

  def handle_event("add_price", %{"quantity" => quantity}, socket) do
    # tickets = socket.assigns.tickets + 1
    # socket = assign(socket, :tickets, tickets)
    socket = update(socket, :price, &(&1 + String.to_integer(quantity)))

    {:noreply, socket}
  end

  def handle_event("subtract_price", %{"quantity" => quantity}, socket) do
    socket = update(socket, :price, &(&1 - String.to_integer(quantity)))

    {:noreply, socket}
  end
end
