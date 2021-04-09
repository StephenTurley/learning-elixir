defmodule PlugServer.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: PlugServer, options: [port: 4001]}
    ]

    opts = [strategy: :one_for_one, name: PlugServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
