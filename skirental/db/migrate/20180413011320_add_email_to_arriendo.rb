class AddEmailToArriendo < ActiveRecord::Migration[5.0]
  def change
    add_column :arriendos, :email, :string
  end
end
