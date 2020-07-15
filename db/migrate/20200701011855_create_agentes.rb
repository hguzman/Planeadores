class CreateAgentes < ActiveRecord::Migration[6.0]
  def change
    create_table :agentes do |t|
      t.string :primerNombre
      t.string :segundoNombre
      t.string :primerApellido
      t.string :nombreUds
      t.string :modalidad
      t.string :correo

      t.timestamps
    end
  end
end
