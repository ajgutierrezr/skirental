class AddFechaToArriendo < ActiveRecord::Migration[5.0]
  def change
    add_column :arriendos, :fecha, :datetime
  end
end
