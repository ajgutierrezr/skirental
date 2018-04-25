class AddExperienceToArriendos < ActiveRecord::Migration[5.0]
  def change
    add_column :arriendos, :experience, :integer
  end
end
