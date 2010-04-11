class CreateArticulos < ActiveRecord::Migration
  def self.up
    create_table :articulos do |t|
      t.string :codigo
      t.string :descripcion
      t.string :codigo_alterno
      t.string :marca
      t.string :descrip_alternativo
      t.text :coment
      t.boolean :afecta_stock
      t.boolean :estado

      t.timestamps
    end
  end

  def self.down
    drop_table :articulos
  end
end
