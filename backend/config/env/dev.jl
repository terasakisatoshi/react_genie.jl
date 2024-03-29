using Genie.Configuration, Logging

const config = Settings(
  server_port                     = 8000,
  server_host                     = "127.0.0.1",
  log_level                       = Logging.Info,
  log_to_file                     = false,
  server_handle_static_files      = true,
  path_build                      = "build",
  format_julia_builds             = true,
  format_html_output              = true,
  cors_headers                    = Dict(
                                      "Access-Control-Allow-Origin" => "http://localhost:3000",
                                      "Access-Control-Allow-Headers" => "Content-Type",
                                      "Access-Control-Allow-Methods" => "GET,POST"),
)

ENV["JULIA_REVISE"] = "auto"