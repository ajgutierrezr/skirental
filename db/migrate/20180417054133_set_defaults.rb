class SetDefaults < ActiveRecord::Migration[5.0]
  def self.up
    change_column_default :arriendos, :talla, 0
    change_column_default :arriendos, :altura, 0
    change_column_default :arriendos, :edad, 0
    change_column_default :arriendos, :peso, 0
    change_column_default :arriendos, :nombre, ""
    change_column_default :arriendos, :apellidop, ""
    change_column_default :arriendos, :apellidom, ""
    change_column_default :arriendos, :cantidad, 0
    change_column_default :arriendos, :dias, 0
    change_column_default :users, :talla, 0
    change_column_default :users, :altura, 0
    change_column_default :users, :edad, 0
    change_column_default :users, :peso, 0
    change_column_default :users, :nombre, ""
    change_column_default :users, :apellidopaterno, ""
    change_column_default :users, :apellidomaterno, ""
  end

  def self.down
    change_column_default :arriendos, :talla, nil
    change_column_default :arriendos, :altura, nil
    change_column_default :arriendos, :edad, nil
    change_column_default :arriendos, :peso, nil
    change_column_default :arriendos, :nombre, nil
    change_column_default :arriendos, :apellidop, nil
    change_column_default :arriendos, :apellidom, nil
    change_column_default :arriendos, :cantidad, nil
    change_column_default :arriendos, :dias, nil
    change_column_default :users, :talla, nil
    change_column_default :users, :altura, nil
    change_column_default :users, :edad, nil
    change_column_default :users, :peso, nil
    change_column_default :users, :nombre, nil
    change_column_default :users, :apellidopaterno, nil
    change_column_default :users, :apellidomaterno, nil
  end
end
