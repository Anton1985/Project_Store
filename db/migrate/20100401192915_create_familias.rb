class CreateFamilias < ActiveRecord::Migration
  def self.up
    create_table :familias do |t|
      t.string :codigo
      t.string :descripcion
      t.boolean :arancel_estado
      t.float :arancel_monto

      t.timestamps
    end
  end

  def self.down
    drop_table :familias
  end
end
