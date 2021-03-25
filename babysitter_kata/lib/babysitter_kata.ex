defmodule BabysitterKata do
  @too_early 4
  @too_late 5

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

  def calculate_price(start_time, end_time, _bed_time) do
    start_hour = hour_with_tod(start_time)
    end_hour = hour_with_tod(end_time)

    from_hours(start_hour, end_hour)
  end

  defp from_hours(start_hour, end_hour) do
    if valid(start_hour) && valid(end_hour) do
      {e, _} = end_hour
      {s, _} = start_hour
      (e - s) * 12
    else
      0
    end
  end

  defp valid({hour, "PM"}) do
    hour > @too_early
  end

  defp valid({hour, "AM"}) do
    hour < @too_late
  end

  defp hour_with_tod(time) do
    {hour, rest} = Integer.parse(time)
    tod = String.slice(rest, 3..4)
    {hour, tod}
  end
end
