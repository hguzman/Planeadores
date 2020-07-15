class AddAgenteToVentas < ActiveRecord::Migration[6.0]
  def change
    add_reference :ventas, :agente, null: false, foreign_key: true
  end
end
