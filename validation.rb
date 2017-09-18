Comandos:

Iniciales:

bundle install

Intermedios:

meterle mano a los Migrate(y a los Seeds,
 en caso de que aplique) basado en el 
 schema design
Finales:

rake db: drop
rake db: create
rake db: migrate
rake db: seed
rake spec

#OTHER COMMANDS

db:migrate
# runs (single) migrations that have not run yet.
db:create
 # creates the database
db:drop
# deletes the database
db:schema:load
# creates tables and columns within the (existing) database following schema.rb
db:setup
# does db:create, db:schema:load, db:seed
db:reset
# does db:drop, db:setup

rake console #me lleva a irb 
#y le puedo pedir cosas

# PARA VALIDATION SIN DEVISE
rails generate migration add_password_digest_to_users password_digest:string


### LEYENDO!!!

# Ver cómo va la instancia:
nombre de la instancia en IRB

Dog.all
Dog.where(age: 1) #qué instancias coinciden
Dog.where("age = ? and name like ?", 1, '%Te%')
Dog.order(age: :desc)
Dog.limit(2) #limita la búsqueda
Dog.count
Dog.pluck(:name, :age)#nos permite sacar 
#solo los valores de ciertos campos
#(de la instancia)
Dog.first
# `::first` es un método de clase que
#  nos da el primer registro en la 
#  tabla `dogs` ordenados por primary
#  key. Opcionalmente podemos pasarle
#  un numero `Dog.first(5)` para traer
#   los primero 5 perros.

Dog.find(1)
#  `::find` nos permite buscar registros
# por su primary key. En este caso el `id`. 
# Podemos pasar un arreglo de `ids` 
# si buscamos multiples registros
#  `Dog.find ([1, 2])``

Dog.order(name: :asc).where(age: 1).limit(1)

# También es posible encadenar estos métodos.
#  Active record creara solo un query de SQL
#   para toda la cadena.


### INSERTANDO!!!

#Versión A
Dog.count da 3 perros
new_dog = Dog.new(name: "Bear")
#todo es nill hasta que se guarde 
#en base de datos, solo existe en memoria
#no en db
Dog.count da 3 perros
new_dog.save 
Dog.count da 4 perros
Dog.create(name: "Max")
Dog.count da 5 perros
Dog.create [{name: "Toot"}, {name: "Cosmo"}]
#Si pasamos un array a create podemos crear
#muchos perros al tiempo.
Person.create [{first_name: "Jose", last_name: "Paez"}, {first_name: "Juan", last_name: "Gomez"}]

# Versión B
find_or_initialize_by
find_or_create_by
# Algunas veces no estamos seguros si el
# registro ya existe en la base de datos.
#  Por ejemplo, ya hay un perro llamado
#  Ozu con x numero de licencia? Hay 
#  algunos métodos que nos permiten mirar
#   en la base de datos para ver si existe
#   y devolverlo y si no crearlo.
Dog.pluck(:name) #hay ozu
Dog.find_or_initialize_by(name: "Ozu", license: "OH-9384764")
#ozu existe con ese id y por ende no hace nada
Dog.find_or_initialize_by(name: "Ozu", license: "MI-1234567")
#ozu no existe con ese id y por ende lo crea en memoria
#faltaría save-earlo

find_or_create_by
 # es igual a  `::find_or_initialize_by`, 
 # con la diferencia que si no encuentra el 
 # registro lo crea de una vez en la base de 
 # datos.

 ### INSERTANDO!!!
 # Asignando valores a la instancia
new_dog.name = "Moshi"
new_dog.owner_id = 3

### VALIDACIÓN!!!
class Dog < ActiveRecord::Base

  # name, license, y owner_id son obligatorios
  validates :name, :license, :owner_id, { :presence => true }

  # la licencia debe ser única para cada perro
  validates :license, { :uniqueness => true }

  # la licencia, debe empezar con dos letras en mayusculas luego un guión luego cualquier carácter.
  validates :license, format: { with: /\A[A-Z]{2}\-/ }

  # la edad no es obligatoria, pero si esta no puede ser menor de 0
  validates :age, { :numericality => { greater_than_or_equal_to: 0 },
                    :allow_blank  => true }

  # validación personalizada
  validate :license_from_us_state

  def license_from_us_state
    unless self.license.instance_of? String
      errors.add :license, "must be a string"
      return
    end

    abbreviation = self.license[0..1]
    unless valid_state_abbreviation? abbreviation
      errors.add :license, "must be from a valid US state"
    end
  end
end



new_dog.valid?
new_dog.errors
user.errors.empty?
user.errors.any?
new_dog.errors.count
new_dog.errors.messages
new_dog.errors.full_messages

class AddBreedToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :breed, :string
  end
end
class RemoveWeightFromDogs < ActiveRecord::Migration
  def change
    remove_column :dogs, :weight
  end
end
class RenameRatingsRaterIdToJudgeId < ActiveRecord::Migration
  def change
    rename_column :ratings, :rater_id, :judge_id
  end
end



