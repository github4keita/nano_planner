defmodule NanoPlanner.PlanItem do
  use NanoPlanner.Web, :model

  schema "plan_items" do
    field :name, :string
    field :description, :string
    field :starts_at, Timex.Ecto.DateTime
    field :ends_at, Timex.Ecto.DateTime

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end

  def convert_datetime(items) do
    alias Timex.Timezone
    Enum.map items, fn(item) ->
      Map.merge(item, %{starts_at: Timezone.convert(item.starts_at, "Asia/Tokyo"), ends_at: Timezone.convert(item.ends_at, "Asia/Tokyo")}) 
    end
  end
end
