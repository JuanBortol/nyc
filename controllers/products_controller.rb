class ProductsController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  # Configuración básica para las vistas
  set :views, Proc.new { File.join(root, "../views/products") }
  set :method_override, true

  # Listar productos
  get '/products' do
    @products = Product.all
    erb :index
  end

  # Formulario para crear producto
  get '/products/new' do
    @inputs = Input.all
    erb :new
  end

  # Crear un producto
  post '/products' do
    product = Product.new(name: params[:name], description: params[:description])
    if product.save
      params[:inputs].each do |input_id, quantity|
        next if quantity.blank?
        product.product_inputs.create(input_id: input_id, quantity: quantity.to_f)
      end
      redirect '/products'
    else
      @errors = product.errors.full_messages
      @inputs = Input.all
      erb :new
    end
  end
end

