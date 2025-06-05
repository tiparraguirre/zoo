# 🦁 Sistema de Alimentación para un Zoológico (Ruby)

Este proyecto modela un **zoológico** y su sistema de alimentación. El sistema permite gestionar animales, alimentos disponibles, el stock de cada uno, y simular el proceso de alimentar a los animales de forma inteligente y controlada.

---

## 🧠 ¿Qué hace este proyecto?

- Permite registrar **animales** y **alimentos** en un zoológico.
- Cada animal tiene preferencias alimenticias y necesidades calóricas específicas (dieta).
- Los alimentos tienen un nombre, cantidad disponible, peso total y calorías.
- Se puede agregar o quitar stock de alimentos.
- Se puede alimentar automáticamente a todos los animales según sus preferencias y necesidades.
- Permite conocer el estado de los animales: quiénes comieron y quiénes no.
- Se pueden transferir animales entre zoológicos.

---

## 🗂️ Estructura del Proyecto

### 📦 Módulo `Alimentos`
Contiene clases que definen los alimentos.

- **`Alimento`** (clase base):  
  - Atributos: `nombre`, `kcal`, `peso`, `cantidad`
  - Métodos: 
    - `sumar_cantidad(cantidad)`
    - `sacar_cantidad(cantidad)`
    - `restar_cantidad_comida(calorias_comidas)`: calcula cuánto alimento hay que restar en base a las calorías consumidas.

- Subclases de `Alimento` incluidas en este proyecto:
  - `Pasto`
  - `Hojas`
  - `Zanahoria`
  - `Pescado`
  - `CarneVacuna`
  - `CarnePorcina`

---

### 🐾 Módulo `Animales`
Contiene la clase base `Animal` que representa a cualquier tipo de animal.

- Atributos:
  - `comio` (booleano)
  - `ultima_comida` (timestamp)
  - `@kcal_comidas` (acumulador interno)

- Métodos:
  - `alimentar(alimento)`: intenta alimentar al animal si el alimento es de su preferencia.
  - `le_gusta?(alimento)`: verifica si un alimento está en la lista de preferidos.
  - `dieta`: define el rango de calorías necesarias (debe implementarse en subclases).
  - `alimentos_preferidos`: lista de alimentos preferidos (debe implementarse en subclases).
  - `lleno?`: indica si el animal ya comió suficiente.

Subclases de `Animal` incluidas en este proyecto:
- `Cerdo`
- `Conejo`
- `Jirafa`
- `Leon`
- `Pinguino`

Cada una define su propia dieta y preferencias alimenticias.

---

### 🏛️ Clase `Zoologico`
Clase principal que representa un zoológico y administra:

- Un conjunto de **animales**.
- Un conjunto de **alimentos**.
- Métodos para:
  - Agregar/eliminar animales.
  - Agregar/eliminar stock de alimentos.
  - Transferir animales entre zoológicos.
  - Alimentar a todos los animales.
  - Verificar el estado de alimentación de cada animal.

---

## ✅ Ejemplo de Uso

```ruby
# Crear un zoológico
zoo = Zoologico.new

# Crear alimentos y sumarles stock
pasto = Pasto.new
pasto.sumar_cantidad(100)

carne = CarneVacuna.new
carne.sumar_cantidad(50)

# Crear animales
conejo = Conejo.new
leon = Leon.new

# Agregarlos al zoológico
zoo.agregar_alimento(pasto)
zoo.agregar_alimento(carne)
zoo.agregar_animal(conejo)
zoo.agregar_animal(leon)

# Alimentar a los animales
estado = zoo.alimentar_animales

puts "Alimentados: #{estado[:alimentados].size}"
puts "No alimentados: #{estado[:no_alimentados].size}"
