class AddIsraelCamposToData < ActiveRecord::Migration[5.2]
  def change
    add_column :data, :numero_correspondencia, :string
  end
end
