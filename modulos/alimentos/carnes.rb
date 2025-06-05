# Módulo que agrupa las clases de alimentos 
module Alimentos
	# Módulo que agrupa las clases de Carnes 
	module Carnes
		 # Clase CarneVacuna que hereda de Alimentos
		class CarneVacuna < Alimento

			# inicializamos un nuevo alimento con su nombre y su cantidad 
			# @return [CarneVacuna]
			def initialize
				@nombre = "CarneVaca"
				self.cantidad = 0
				
			end
			
			private
			# setter de cantidad, se establece y/o recalcula el peso , la cantidad y  las kcal del alimento en base a su stockear
			# @params nueva_cant[Number] 
			def cantidad=(nueva_cant)
				
				@peso = 125* nueva_cant
				@kcal = (@peso * 2.5)	
				@cantidad  = nueva_cant
			end
		end

		 # Clase CarnePorcina que hereda de Alimentos
		class CarnePorciona < Alimento

			# inicializamos un nuevo alimento con su nombre y su cantidad 
			
			# @return [CarnePorcina]
			def initialize
				@nombre = "CarneCerdo"
				self.cantidad = 0
			
			end
			
			
			private
			# setter de cantidad, se establece y/o recalcula el peso , la cantidad y  las kcal del alimento en base a su stockear
			# @params nueva_cant[Number] 
			def cantidad=(nueva_cant)
				
				@peso = 125* nueva_cant
				@kcal = (@peso * 3.0)	
				@cantidad  = nueva_cant
			end
		end
	end
end