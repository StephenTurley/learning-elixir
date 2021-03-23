defmodule BabysitterKata do
  @moduledoc """
  Documentation for `BabysitterKata`.
  """

  @doc """
  Hello world.

  https://gist.github.com/jameskbride/5482722
  The babysitter 
  - starts no earlier than 5:00PM
  - leaves no later than 4:00AM
  - gets paid $12/hour from start-time to bedtime
  - gets paid $8/hour from bedtime to midnight
  - gets paid $16/hour from midnight to end of job
  - gets paid for full hours (no fractional hours)

  ## Examples

      iex> BabysitterKata.calculate_price("4:00PM", "6:00PM", "8:00PM")
      0

  """
  def calculate_price(_start_time, _end_time, _bed_time) do
    0
  end
end
