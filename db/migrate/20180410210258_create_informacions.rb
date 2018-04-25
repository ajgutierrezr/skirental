class CreateInformacions < ActiveRecord::Migration[5.0]
  def change
    create_table :informacions do |t|

      t.timestamps
    end
  end
end
