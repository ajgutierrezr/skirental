class CreateNuestroEquipos < ActiveRecord::Migration[5.0]
  def change
    create_table :nuestro_equipos do |t|

      t.timestamps
    end
  end
end
