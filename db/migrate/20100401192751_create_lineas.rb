class CreateLineas < ActiveRecord::Migration
  def self.up
    create_table :lineas do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :lineas
  end
end
