class UnidMedida < ActiveRecord::Base

#empieza agrupacion
	has_many :articulos
	#acts_as_list :scope => "articulo"

end
