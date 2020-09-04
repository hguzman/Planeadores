class ChangeRolToString < ActiveRecord::Migration[6.0]
  def change
	change_column :usuarios, :rol, :string
  end
end
