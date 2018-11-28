class AddIsCamposToData < ActiveRecord::Migration[5.2]
  def change
    add_column :data, :numero_pension, :integer
    add_column :data, :sala, :string
    add_column :data, :tipo_expediente, :string
    add_column :data, :numero_expediente, :string
    add_column :data, :estado_expediente, :string
    add_column :data, :observaciones, :text
    add_column :data, :letra, :string
    add_column :data, :termino, :date
    add_column :data, :envio_juridico, :date
    add_column :data, :monto_cheque, :float
    add_column :data, :ajuste_cuota, :float
  end
end
