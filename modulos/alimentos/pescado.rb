# Módulo que agrupa las clases de alimentos 
module Alimentos
	 # Clase Pescado que hereda de Alimentos
	class Pescado < Alimento
		
		# inicializamos un nuevo alimento con su nombre y su cantidad 
		
		# @return [Pescado]
		def initialize
			@nombre = "Pescado"
			self.cantidad  = 0
		end

		
		private
		# setter de cantidad, se establece y/o recalcula el peso , la cantidad y  las kcal del alimento en base a su stockear
		# @params nueva_cant [Number] 
		def cantidad=(nueva_cant)
			
			@peso = 110 * nueva_cant
			@kcal = (@peso * 1.2)
			@cantidad  = nueva_cant
		end

	end
end