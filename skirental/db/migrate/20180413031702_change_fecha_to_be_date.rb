class ChangeFechaToBeDate < ActiveRecord::Migration[5.0]
  def change
    change_column :arriendos, :fecha, :date
  end
end
