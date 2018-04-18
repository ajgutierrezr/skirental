class AddStockToEquipos < ActiveRecord::Migration[5.0]
  def change
    add_column :equipos, :stock, :integer
  end
end
