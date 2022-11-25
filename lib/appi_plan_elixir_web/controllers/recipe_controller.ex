defmodule AppiPlanElixirWeb.RecipeController do
  use AppiPlanElixirWeb, :controller

  def index(conn, %{"search" => search_input}) do
    recipes = [
      %{title: "bla"},
      %{title: "blabla"},
      %{title: "bli"}
    ]

    result = Enum.filter(recipes, fn r -> String.contains?(r.title, search_input) end)
    render(conn, "index.html", %{result: result})
  end

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
