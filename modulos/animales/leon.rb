# Módulo que agrupa las clases de animales del zoológico.
module Animales
  # Clase Leon que hereda metodos y inicializacion de Animal
  class Leon < Animal

    # reescribimos alimentos_preferidos con un array con le que le gusta
    def alimentos_preferidos
      ["CarneVaca",  "CarneCerdo"]
    end

		# reescribimos metodo dieta con el rango de kcal del animal
    def dieta
       4000..7000
    end
  end
end
