class CreateTerminos < ActiveRecord::Migration[5.0]
  def change
    create_table :terminos do |t|

      t.timestamps
    end
  end
end
