class RenameApellidoColumnToApellidopaterno < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :users, :apellido, :apellidopaterno
  end

  def self.down
    rename_column :users, :apellidopaterno, :apellido
  end
end
