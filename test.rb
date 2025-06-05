require_relative 'modulos/cargar_archivos.rb'

# Instancio al león del zoo
leon1 = Animales::Leon.new

# Instancio a la jirafa del zoo
jirafa1 = Animales::Jirafa.new

# Instancio al pingüino del zoo
pinguino1 = Animales::Pinguino.new

# Instancio al conejo del zoo
conejo1 = Animales::Conejo.new

# Instancio al cerdo del zoo
cerdo1 = Animales::Cerdo.new

# Instancio a las zanahorias (unico por zoo)
zanahorias = Alimentos::Vegetales::Zanahoria.new

# Instancio a las hojas (unico por zoo)
hojas = Alimentos::Hojas.new

# Instancio al pasto  (unico por zoo)
pasto = Alimentos::Pasto.new

# Instancio a la carne de vaca (unico por zoo)
carne_vaca = Alimentos::Carnes::CarneVacuna.new

# Instancio a las zanahorias (unico por zoo)
carne_cerdo = Alimentos::Carnes::CarnePorciona.new

# Creo el registro de zoo1 (único)
zoo1 = Zoologico.new

# Creo el registro de zoo1 (único)
zoo2 = Zoologico.new

# agrego animales al zoo1
zoo1.agregar_animal(leon1)
zoo1.agregar_animal(jirafa1)
zoo1.agregar_animal(conejo1)
zoo1.agregar_animal(cerdo1)

# agrego alimentos al registro de alimentos  del zoo1 (unico)
zoo1.agregar_alimento(zanahorias)
zoo1.agregar_alimento(hojas)
zoo1.agregar_alimento(carne_cerdo)
zoo1.agregar_alimento(carne_vaca)
zoo1.agregar_alimento(pasto)

# agrego stock de zanahorias 
 zoo1.agregar_stock(zanahorias,10)


# agrego stock pasto
zoo1.agregar_stock(pasto,1000000000)

#alimento animales
zoo1.alimentar_animales


# transfiero animal
zoo1.transferir_animal(conejo1, zoo2)
