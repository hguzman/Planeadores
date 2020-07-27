class DropTableVentas < ActiveRecord::Migration[6.0]
  def change
  	drop_table :ventas 
  end
end
