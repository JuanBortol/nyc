require 'sinatra'
require 'sinatra/reloader' if development?

class App < Sinatra::Application

get '/' do
  "¡Hola, mundo desde Sinatra!"
end

end
