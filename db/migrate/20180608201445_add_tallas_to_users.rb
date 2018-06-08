class AddTallasToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :talla_parka, :integer, :default => 0
    add_column :users, :talla_pantalon, :integer, :default => 0
  end
end
