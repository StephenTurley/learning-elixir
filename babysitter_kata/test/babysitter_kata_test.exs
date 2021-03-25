defmodule BabysitterKataTest do
  use ExUnit.Case
  doctest BabysitterKata

  # https://gist.github.com/jameskbride/5482722
  # The babysitter 
  # - starts no earlier than 5:00PM
  # - leaves no later than 4:00AM
  # - gets paid $12/hour from start-time to bedtime
  # - gets paid $8/hour from bedtime to midnight
  # - gets paid $16/hour from midnight to end of job
  # - gets paid for full hours (no fractional hours)

  test "starts before 5 PM should have a total price of 0" do
    assert BabysitterKata.calculate_price("4:00PM", "6:00PM", "8:00PM") == 0
  end

  test "stays after 4 AM should have a total price of 0" do
    assert BabysitterKata.calculate_price("5:00PM", "5:00AM", "8:00PM") == 0
  end

  test "works for one hour before bed time" do
    assert BabysitterKata.calculate_price("5:00PM", "6:00PM", "8:00PM") == 12
  end
end
