defmodule Pnpm do
  @moduledoc """
  Wrapper for `pnpm`.
  """

  @doc """
  Executes pnpm install

  ## Examples

      iex> Pnpm.install("./", IO.stream())

  """
  def install(directory, into) do
    System.cmd("pnpm", ["install"], cd: directory, into: into)
  end
end
