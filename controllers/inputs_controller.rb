class InputsController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  # Configuración básica para las vistas
  set :views, Proc.new { File.join(root, "../views/inputs") }
  set :method_override, true

  # Listar insumos
  get '/inputs' do
    @inputs = Input.all
    erb :index
  end

  # Formulario para crear insumo
  get '/inputs/new' do
    erb :new
  end

  # Crear un insumo
  post '/inputs' do
    input = Input.new(params[:input])
    if input.save
      redirect '/inputs'
    else
      @errors = input.errors.full_messages
      erb :new
    end
  end
end

