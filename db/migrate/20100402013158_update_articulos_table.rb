class UpdateArticulosTable < ActiveRecord::Migration
  def self.up
	add_column :articulos, :tipo_articulo_id,    :integer
	add_column :articulos, :unidad_medida_id,    :integer
	add_column :articulos, :color_id,    	     :integer
	add_column :articulos, :familia_id,          :integer
	add_column :articulos, :linea_id,            :integer
	add_column :articulos, :grupo_id,            :integer

  end

  def self.down
	remove_column :articulos, :tipo_articulo_id,    :integer
	remove_column :articulos, :unid_medida_id,      :integer
	remove_column :articulos, :color_id,    	:integer
	remove_column :articulos, :familia_id,          :integer
	remove_column :articulos, :linea_id,            :integer
	remove_column :articulos, :grupo_id,            :integer
  end
end
