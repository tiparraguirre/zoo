# Módulo que agrupa las clases de alimentos 
module Alimentos

	# Clase Padre de los alimentos
		class Alimento
			attr_reader :nombre, :kcal, :peso, :cantidad
			
			# metodo para restar el peso , cantidad y calorias comidas de un Animales en base a las calorias que se comieron de ese alimento
			# @params caloriascomidas [Number] calorias consumidas de ese alimento
			# @return [@cantidad]
			def restar_cantidad_comida(calorias_comidas)
				 return false if  @kcal == 0
				peso_consumido = (calorias_comidas * @cantidad) / @kcal
				sacar_cantidad(peso_consumido)
			end
			
			# metodo para sumar cantidad
			# @params cantidad_agregada[Number] cantidad a agregar
			# return [@cantidad]
			def sumar_cantidad(cantidad_agregada)
				self.cantidad +=(cantidad_agregada)
			end

			# metodo para sacar cantidad
			# @params cantidad_sacada[Number] cantidad a sacar
			# @return [@cantidad]
			def sacar_cantidad(cantidad_sacada)
				return false if cantidad_sacada > @cantidad
				self.cantidad -=(cantidad_sacada)
			end
			
		end

	end