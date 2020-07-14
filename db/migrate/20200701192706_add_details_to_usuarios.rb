class AddDetailsToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :primerNombre, :string
    add_column :usuarios, :segundoNombre, :string
    add_column :usuarios, :primerApellido, :string
  end
end
