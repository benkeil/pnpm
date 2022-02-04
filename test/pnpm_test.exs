defmodule PnpmTest do
  use ExUnit.Case
  doctest Pnpm

  test "greets the world" do
    assert Pnpm.hello() == :worldX
  end
end
