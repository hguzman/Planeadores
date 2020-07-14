class CreateVentas < ActiveRecord::Migration[6.0]
  def change
    create_table :ventas do |t|
      t.integer :valor
      t.date :fechaVenta
      t.string :medioPago

      t.timestamps
    end
  end
end
