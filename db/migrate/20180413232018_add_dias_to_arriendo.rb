class AddDiasToArriendo < ActiveRecord::Migration[5.0]
  def change
    add_column :arriendos, :dias, :integer
  end
end
