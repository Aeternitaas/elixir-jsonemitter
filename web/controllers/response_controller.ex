defmodule Jsonemitter.ResponseController do
  use Jsonemitter.Web, :controller

  def json_file() do
    %{
      "user_id" => "PRC098W",
      "account_id" => 8,
      "account_role" => "owner",
      "can_see_all_objects" => false,
      "roles" => %{
        "service" => %{
          "P29NBY9" => "manager",
          "POOPBUG" => "manager",
        },
        "escalation_policy" => %{
        },
        "team" => %{
          "PIJ90N7" => "manager",
          "PY1OL64" => "manager",
        }
      }
    }
  end

  def index(conn, _params) do
    json conn, json_file
      #render conn, "index.html"
  end
end
