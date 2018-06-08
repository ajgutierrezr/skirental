class AddNacToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nac, :date
  end
end
