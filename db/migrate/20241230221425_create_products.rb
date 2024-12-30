class CreateProducts < ActiveRecord::Migration[8.0]
  def change
  	create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :price, precision: 10, scale: 2, null: false # Precio de venta
      t.decimal :cost, precision: 10, scale: 2, null: false # costo del insumo
      t.timestamps
    end
  end
end
