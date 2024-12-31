class CreateProductInputs < ActiveRecord::Migration[8.0]
  def change
    create_table :product_inputs do |t|
      t.references :product, null: false, foreign_key: true # Relación con la tabla productos
      t.references :input, null: false, foreign_key: true   # Relación con la tabla insumos
      t.decimal :quantity, precision: 10, scale: 2, null: false # Cantidad del insumo en el producto
      t.timestamps
    end
  end
end
