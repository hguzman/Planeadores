class RemoveEstadoFromPlaneaciones < ActiveRecord::Migration[6.0]
  def change
    remove_column :planeaciones, :estado, :string
  end
end
