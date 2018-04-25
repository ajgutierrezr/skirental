class AddApellidomaternoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :apellidomaterno, :string
  end
end
