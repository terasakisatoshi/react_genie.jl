using Genie.Router
using Genie.Renderer.Json

route("/") do
  json(
    Dict(
      "frontend" => "React",
      "backend" => "Julia"
    )
  )
end
