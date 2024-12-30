class CreateProductInputs < ActiveRecord::Migration[8.0]
  def change
  	create_table :inputs do |t|
      t.string :name
      t.text :description
      t.decimal :cost, precision: 10, scale: 2
      t.string :unit # Ejemplo: "kg", "m", "cm", "unidad"
      t.timestamps
    end
  end
end
