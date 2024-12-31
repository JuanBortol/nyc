require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'

require './models/input'
require './models/product'
require './models/product_input'
require_relative 'controllers/inputs_controller'
require_relative 'controllers/products_controller'

# General database config
set :database_file, 'config/database.yml'

# mount controllers
use InputsController
use ProductsController

class App < Sinatra::Application

  get '/' do
    erb :menu
  end

  get '/abm' do
    erb :abm
  end

  get '/cola-produccion' do
    "Página Cola de Producción"
  end

  get '/calculadora-pedidos' do
    "Página Calculadora de Pedidos"
  end

end
