class AddEndOfToArriendos < ActiveRecord::Migration[5.0]
  def change
    add_column :arriendos, :endof, :boolean
  end
end
