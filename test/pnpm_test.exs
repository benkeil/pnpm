defmodule PnpmTest do
  use ExUnit.Case
  #  doctest Pnpm

  test "execute pnpm install" do
    {:ok, terminal} = StringIO.open("")
    stream = IO.binstream(terminal, :line)
    Pnpm.install(__DIR__, stream)
    {"", output} = StringIO.contents(terminal)
    assert String.trim(output) == "Already up-to-date"
  end
end
