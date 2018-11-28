class AddPdfToData < ActiveRecord::Migration[5.2]
  def change
    add_attachment :data, :documento
  end
end
