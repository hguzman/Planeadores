class CreatePlaneaciones < ActiveRecord::Migration[6.0]
  def change
    create_table :planeaciones do |t|
      t.string :formato
      t.string :tematica
      t.string :estado
      t.references :agente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
