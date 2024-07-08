defmodule NewMetricTest do
  use ExUnit.Case
  doctest NewMetric

  test "successful query" do
    {:ok, _} = NewMetric.query()
  end
end
