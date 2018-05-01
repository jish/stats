defmodule StatsTest do
  use ExUnit.Case
  use ExCheck

  doctest Stats

  describe "lists of integers" do
    property "single item lists are their own sum" do
      for_all number in real() do
        assert Stats.sum([number]) == number
      end
    end

    property "count is a positive integer" do
      for_all list in list(int()) do
        assert Stats.count(list) >= 0
      end
    end

    property "sum equals average times count" do
      for_all l in such_that(l in list(int()) when length(l) > 0) do
        abs(Stats.sum(l) - Stats.count(l) * Stats.average(l)) < 1.0e-6
      end
    end
  end
end
