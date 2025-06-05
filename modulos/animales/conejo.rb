module Animales

	# Clase Conejo que hereda metodos y inicializacion de Animal
	class Conejo < Animal

		# reescribimos alimentos_preferidos con un array con le que le gusta
		def alimentos_preferidos
			["Zanahoria", "Pasto"]
		end
		
		# reescribimos metodo dieta con el rango de kcal del animal
		def dieta
       		400..600
    	end
	end
end