require "better_errors"
require "binding_of_caller"
require "sinatra"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  "Hello World"
end

require "sinatra/reloader"

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end
