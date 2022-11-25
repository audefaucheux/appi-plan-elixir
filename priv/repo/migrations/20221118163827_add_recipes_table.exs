defmodule AppiPlanElixir.Repo.Migrations.AddRecipesTable do
  use Ecto.Migration

  def up do
    create table("recipes") do
      add :title, :string

      timestamps()
    end
  end

  def down do
    drop table("recipes")
  end
end
