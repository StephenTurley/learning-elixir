# a simple supervisor that starts up the Scenic.SensorPubSub server
# and any set of other sensor processes

defmodule ScenicExample.Sensor.Supervisor do
  use Supervisor

  alias ScenicExample.Sensor.Temperature

  def start_link(_) do
    Supervisor.start_link(__MODULE__, :ok)
  end

  def init(:ok) do
    children = [
      Scenic.Sensor,
      Temperature
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
