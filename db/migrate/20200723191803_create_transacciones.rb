class CreateTransacciones < ActiveRecord::Migration[6.0]
  def change
    create_table :transacciones do |t|
      t.integer :valor
      t.string :medio_de_pago
      t.date :fecha_de_pago
      t.references :agente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
