defmodule Mix.Tasks.Pnpm.Install do
  @moduledoc false
  @requirements ["app.config"]
  use Mix.Task

  @shortdoc "Calls pnpm install"
  def run(_) do
    IO.puts "Installing npm dependencies..."
    cd = Application.fetch_env!(:pnpm, :cd)
    Pnpm.install(cd, IO.stream())
  end
end
