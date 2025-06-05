# Módulo que agrupa las clases de animales del zoológico.
module Animales
  # Clase Jirafa que hereda metodos y inicializacion de Animal
  class Jirafa < Animal

    # reescribimos alimentos_preferidos con un array con le que le gusta
    def alimentos_preferidos
      ["Hojas", "Pasto"]
    end
    
		# reescribimos metodo dieta con el rango de kcal del animal
    def dieta
       15000..30000
      
    end
  end

end
