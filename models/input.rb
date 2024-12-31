class Input < ActiveRecord::Base
  has_many :product_inputs
  has_many :products, through: :product_inputs

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :unit_cost, presence: true, numericality: { greater_than_or_equal_to: 0 }
end

