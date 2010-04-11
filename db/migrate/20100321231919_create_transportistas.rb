class CreateTransportistas < ActiveRecord::Migration
  def self.up
    create_table :transportistas do |t|
      t.string :codigo
      t.string :descripcion
      t.string :nro_incripcion
      t.string :ruc
      t.string :dni
      t.string :nro_brevete
      t.string :direc1
      t.string :direc2
      t.string :telf1
      t.string :telf2
      t.string :fax
      t.string :modelo_marca
      t.string :placa
      t.text :notas

      t.timestamps
    end
  end

  def self.down
    drop_table :transportistas
  end
end
