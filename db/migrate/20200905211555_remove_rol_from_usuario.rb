class RemoveRolFromUsuario < ActiveRecord::Migration[6.0]
  def change
  	remove_column :usuarios, :rol, :string
  end
end
