class RolifyCreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table(:roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:usuarios_roles, :id => false) do |t|
      t.references :usuario
      t.references :role
    end
    
    add_index(:roles, :name)
    add_index(:roles, [ :name, :resource_type, :resource_id ])
    add_index(:usuarios_roles, [ :usuario_id, :role_id ])
  end
end
