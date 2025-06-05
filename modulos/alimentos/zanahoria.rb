# Módulo que agrupa las clases de alimentos 
module Alimentos
	# Módulo que agrupa las clases de Vegetales 
	module Vegetales
		 # Clase Zanahoria que hereda de Alimentos
		class Zanahoria < Alimento

			# inicializamos un nuevo alimento con su nombre y su cantidad 
			# @return Zanahoria[Object]
			def initialize	
				@nombre = "Zanahoria"
				self.cantidad = 0
			end
			
			
			private
			# setter de cantidad, se establece y/o recalcula el peso , la cantidad y  las kcal del alimento en base a su stockear
			# @params nueva_cant[Number] 
			def cantidad=(nueva_cant)
  			
					@cantidad = nueva_cant
   				@peso = 60 * @cantidad           
  				@kcal = @peso * 0.4               
 			end
		end
	end	
end