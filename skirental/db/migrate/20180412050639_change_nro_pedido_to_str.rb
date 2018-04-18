class ChangeNroPedidoToStr < ActiveRecord::Migration[5.0]
  def change
    change_column :arriendos, :nropedido, :string
  end
end
