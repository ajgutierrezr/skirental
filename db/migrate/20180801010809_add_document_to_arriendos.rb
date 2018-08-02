class AddDocumentToArriendos < ActiveRecord::Migration[5.0]
  def change
    add_column :arriendos, :document, :string
  end
end
