class RemoveEdadFromUser < ActiveRecord::Migration[5.0]
  def up
    remove_column :users, :edad
  end
  def down
    remove_column :users, :edad, :integer
  end
end
