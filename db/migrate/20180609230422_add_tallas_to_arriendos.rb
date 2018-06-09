class AddTallasToArriendos < ActiveRecord::Migration[5.0]
  def change
    add_column :arriendos, :talla_parka, :integer, :default => 0
    add_column :arriendos, :talla_pantalon, :integer, :default => 0
  end
end
