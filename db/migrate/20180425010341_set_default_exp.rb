class SetDefaultExp < ActiveRecord::Migration[5.0]
    def self.up
      change_column_default :arriendos, :experience, 1
      change_column_default :users, :experience, 1
    end

    def self.down
      change_column_default :arriendos, :experience, nil
      change_column_default :users, :experience, nil
    end
  end
