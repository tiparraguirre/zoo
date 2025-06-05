# Módulo que agrupa las clases de animales del zoológico.
module Animales
  # Clase padre de las que heredan los animales
  class Animal
    attr_accessor :comio, :ultima_comida

    # inicializamos un nuevo animal con su ultima comida , sus kcal consumidas y si comio o no
    # @return Animal[Object] , animal creado
    def initialize
      @comio = false
      @ultima_comida = nil
      @kcal_comidas = 0
    end

    # metodo alimentar que tienen que tener todas las clases que lo hereden
    # @return [NotImplementedError] levanta error 
    def alimentos_preferidos
      raise NotImplementedError
    end

    # metodo dieta, cuantas kcal necesita un animal para llenarse
    # @return [Range] rango de calorias
    def dieta
      raise NotImplementedError
    end

    # metodo lleno , si las kcal consumidas son mayores o iguales a dieta
    # @return [Boolean]
    def lleno?
      @kcal_comidas >= dieta.begin
    end

    # metodo comer , verifica si su alimento esta en  en su metodo alimentos_preferidos
    # @params Alimento.nombre[String] necesita un alimento para pasarle a alimentos_preferidos
    # @return [Boolean] true si esta en alimentos_preferidos, false si no
    def le_gusta?(alimento)
      alimentos_preferidos.include?(alimento)
    end
   
    # metodo alimentar , cambia el estado comio , a true si el animal llego a sus kcal diarias
    # @params Alimento.nombre[String] alimento que se le ofrece al animal
    def alimentar(alimento)
       
      return false unless le_gusta?(alimento.nombre)
      
      # cequeamos cuantas kcal lleva comidas y cuantas le falta para llenarse
      kcal_previas = @kcal_comidas
      kcal_necesarios = dieta.begin - kcal_previas
      kcal_a_consumir = [alimento.kcal, kcal_necesarios].min
      @kcal_comidas += kcal_a_consumir
      alimento.restar_cantidad_comida(kcal_a_consumir)

      if lleno?
        # si se lleno:
        @comio = true
        @ultima_comida = Time.now

        true
      end
      
           
    end
  end    
end
