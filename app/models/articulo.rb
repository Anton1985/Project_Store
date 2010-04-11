class Articulo < ActiveRecord::Base

	 has_attached_file :screenshot

## empiez las relaciones
	belongs_to :tipo_articulo
	belongs_to :unid_medida
	belongs_to :color
	belongs_to :familia
	belongs_to :grupo
	belongs_to :linea
#	belongs_to :
	

end
