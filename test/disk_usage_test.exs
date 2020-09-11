defmodule DiskUsageTest do
  use ExUnit.Case
  doctest DiskUsage

  test "does not panic" do
    assert DiskUsage.read() == :ok
  end
end
