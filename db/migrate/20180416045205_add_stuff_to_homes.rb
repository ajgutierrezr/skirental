class AddStuffToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :snowforecast, :string
    add_column :homes, :camino, :string
  end
end
