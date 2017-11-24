defmodule ExfileSample.Schema do
  @moduledoc """
  Definitions used by all schemas.
  """
  defmacro __using__([]) do
    quote do
      use Ecto.Schema
      import Ecto.{Query, Changeset}, warn: false
      alias ExfileSample.Repo
    end
  end
end
