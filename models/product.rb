class Product < ActiveRecord::Base
  has_many :product_inputs
  has_many :inputs, through: :product_inputs

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  # Método para calcular el costo total del producto
  def calculate_cost
    product_inputs.includes(:input).sum do |product_input|
      product_input.quantity * product_input.input.unit_cost
    end
  end
end

