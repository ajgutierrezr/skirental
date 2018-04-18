class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.integer :peso
      t.integer :altura
      t.float :talla

      t.timestamps
    end
  end
end
