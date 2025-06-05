# Módulo que agrupa las clases de alimentos 
module Alimentos
	 # Clase Pasto que hereda de Alimentos
	class Pasto < Alimento
		
		# inicializamos un nuevo alimento con su nombre y su cantidad 
		# @return Pasto[Object]
		def initialize
			@nombre = "Pasto"
			self.cantidad = 0
		end
		
		
		private
		# setter de cantidad, se establece y/o recalcula el peso , la cantidad y  las kcal del alimento en base a su stockear
		# @params nueva_cant[Number] 
		def cantidad=(nueva_cant)
			
			@peso = 0.1 * nueva_cant
			@cantidad  = nueva_cant
			@kcal = (@peso * 0.2)	
		end
		
	end
end