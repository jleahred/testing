defmodule MiniLiveviewWeb.CounterLive do
  use MiniLiveviewWeb, :live_view

  def mount(_params, _session, socket) do
    {
      :ok,
      socket
      |> assign(counter: 0)
    }
  end

  def handle_event("clicked", _par, socket) do
    curr_value = socket.assigns.counter

    {
      :noreply,
      socket
      |> assign(counter: curr_value + 1)
    }
  end
end
