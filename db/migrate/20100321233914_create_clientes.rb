class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :codigo
      t.string :descripcion
      t.string :ruc
      t.string :dni
      t.string :direccion1
      t.string :numero
      t.string :interior
      t.string :tefl1
      t.string :telf2
      t.string :fax
      t.string :email
      t.string :giro_negocio
      t.string :representante
      t.string :referencias
      t.string :nro_cuenta
      t.string :vendedor_asignado
      t.string :limite_cred
      t.text :nota

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
