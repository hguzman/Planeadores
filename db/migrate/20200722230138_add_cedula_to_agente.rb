class AddCedulaToAgente < ActiveRecord::Migration[6.0]
  def change
    add_column :agentes, :cedula, :string
    add_index :agentes, :cedula
  end
end
