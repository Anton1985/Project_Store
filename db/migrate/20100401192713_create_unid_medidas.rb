class CreateUnidMedidas < ActiveRecord::Migration
  def self.up
    create_table :unid_medidas do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :unid_medidas
  end
end
