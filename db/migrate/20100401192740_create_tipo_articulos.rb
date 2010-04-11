class CreateTipoArticulos < ActiveRecord::Migration
  def self.up
    create_table :tipo_articulos do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_articulos
  end
end
