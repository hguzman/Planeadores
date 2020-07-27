class AddFechaDeCreacionToPlaneaciones < ActiveRecord::Migration[6.0]
  def change
    add_column :planeaciones, :fecha_de_creacion, :date
  end
end
