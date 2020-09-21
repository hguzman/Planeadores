class RemovePlaneacionFromTransaccion < ActiveRecord::Migration[6.0]
  def change
    remove_column :transacciones, :planeacion_id, :string
  end
end
