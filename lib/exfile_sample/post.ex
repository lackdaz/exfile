defmodule ExfileSample.Post do
  use ExfileSample.Schema

  schema "posts" do
    field :title, :string
    field :photo, Exfile.Ecto.File

    timestamps()
  end

  @doc """
  Creates a changeset based on the `model` and `params`.
  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:title, :photo])
  end
end
