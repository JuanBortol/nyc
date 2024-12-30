require 'sinatra'
require 'sinatra/reloader' if development?

class App < Sinatra::Application

  get '/' do
    erb :'menu'
  end

  get '/abm' do
    "Página ABM"
  end

  get '/cola-produccion' do
    "Página Cola de Producción"
  end

  get '/calculadora-pedidos' do
    "Página Calculadora de Pedidos"
  end

end
