class CreateVendedors < ActiveRecord::Migration
  def self.up
    create_table :vendedors do |t|
      t.string :codigo
      t.string :descripcion
      t.string :ruc
      t.string :dni
      t.string :direc1
      t.string :direc2
      t.string :telf1
      t.string :telf2
      t.string :fax
      t.string :email
      t.string :ref
      t.string :zona_venta
      t.text :notas

      t.timestamps
    end
  end

  def self.down
    drop_table :vendedors
  end
end
