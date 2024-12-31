class ProductInput < ActiveRecord::Base
  belongs_to :product
  belongs_to :input

  validates :quantity, presence: true, numericality: { greater_than: 0 }
end

