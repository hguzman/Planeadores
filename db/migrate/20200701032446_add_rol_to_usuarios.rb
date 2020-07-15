class AddRolToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :rol, :boolean, default: false
  end
end
