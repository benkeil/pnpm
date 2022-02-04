defmodule Mix.Tasks.Pnpm.Install do
  @moduledoc false
  use Mix.Task

  @shortdoc "Calls pnpm install"
  def run(_) do
    IO.puts "Installing npm dependencies..."
    cd = Application.fetch_env!(:pnpm, :cd)
    System.cmd("pnpm", ["install"], cd: cd, into: IO.stream())
  end
end
