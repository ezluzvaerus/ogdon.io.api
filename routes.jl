using Genie, Genie.Router
using Genie.Renderer, Genie.Renderer.Html, Genie.Renderer.Json


route("/") do
  serve_static_file("welcome.html")
end

route("/ugh") do
  "FUCKING UGH"
end

route("/hello") do
  "Welcome to Genie!"
end

route("/error500") do
  error_500("Something went wrong")
end

route("/error404") do
  error_404("the page you want")
end

up(8001, async = false)
