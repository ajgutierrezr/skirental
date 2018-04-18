class CreateEquipos < ActiveRecord::Migration[5.0]
  def change
    create_table :equipos do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.integer :price

      t.timestamps
    end
  end
end
