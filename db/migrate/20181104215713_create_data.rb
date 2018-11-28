class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|
      t.integer :turno
      t.integer :numero_oficio
      t.date :fecha_oficio
      t.date :fecha_recepcion
      t.string :nombre_promovente
      t.string :numero_juicio
      t.string :turnado

      t.timestamps
    end
  end
end
