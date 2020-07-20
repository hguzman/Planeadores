class AddNombreToPlaneacion < ActiveRecord::Migration[6.0]
  def change
    add_column :planeaciones, :nombre, :string
  end
end
