class CreateArriendos < ActiveRecord::Migration[5.0]
  def change
    create_table :arriendos do |t|
      t.integer :talla
      t.integer :altura
      t.integer :edad
      t.integer :peso
      t.string :nombre
      t.string :apellidop
      t.string :apellidom
      t.integer :nropedido
      t.integer :cantidad
      t.integer :user_id
      t.integer :equipo_id

      t.timestamps
    end
  end
end
