# Módulo que agrupa las clases de alimentos 
module Alimentos
	 # Clase Hojas que hereda de Alimentos
	class Hojas < Alimento

		# inicializamos un nuevo alimento con su nombre y su cantidad 
		# @return Hojas[Object]
		def initialize
			@nombre = "Hojas"
			self.cantidad = 0
		end

		

		# setter de cantidad, se establece y/o recalcula el peso , la cantidad y  las kcal del alimento en base a su stockear
		# @params nueva_cant[Number] 
		def cantidad=(nueva_cant)
			
		
			@peso = 5 * nueva_cant
			@kcal = (@peso * 0.3)
			@cantidad  = nueva_cant
		end
		
	end
end