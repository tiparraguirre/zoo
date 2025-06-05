module Animales
	# Clase Cerdo que hereda metodos y inicializacion de Animal
	class Cerdo < Animal

		# reescribimos alimentos_preferidos con un array con le que le gusta
		def alimentos_preferidos
			["CarneVaca"]
		end

		# reescribimos metodo dieta con el rango de kcal del animal
		def dieta 
			6000..9000
		end
	end
end