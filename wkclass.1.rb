class Person
  attr_accessor :firstname, :lastname, :city
  #
  def initialize (firstname, lastname, city="city unknown")
    @firstname = firstname
    @lastname = lastname
    @city = city
  end

end

class Car

  attr_accessor :company, :model, :year, :currentOwner

  def initialize (company, model, year)
    @company = company
    @model = model
    @year = year
  end

end


# 5) Create 2 objects of type Person
person1 = Person.new("Jim","Smith","new york")
person2 = Person.new("Mason", "King", "LA")
person5 = Person.new("Larry", "Adames", "Queens baby!")

# 6) print city for both person1 and 2
puts person1.city
puts person2.city

# 8) Create 2 objects of type Car
car1 = Car.new("Telsa","Model S", "2013")
car2 = Car.new("Nissan","Leaf","2012")
car4 = Car.new("BMW", "i8", "2015")

# 9) Add Jim Smith as the owner of the Tesla, to do this we = person1 to
#  car1.currentOwner
car1.currentOwner = person1
# 10) Add Mason King as the owner of the Nissan, same as above
car2.currentOwner = person2
car4.currentOwner = person5

#  11) Print Company, model, year and owner name for both cars
puts car1.company
puts car1.model
puts car1.year
puts car1.currentOwner.firstname

puts car2.company
puts car2.model
puts car2.year
puts car2.currentOwner.firstname

# Now ownership changes – A new guy John H comes in and owns the Nissan
person3 = Person.new("John","H", "san diego")
# Add John H as the owner of the Nissan
car2.currentOwner = person3

# Another ownership change – new guy James M comes in and now owns the Tesla
person4 = Person.new("James","H", "chicago")
car1.currentOwner = person4

# Print the first name, last name and city of the owners of both cars
puts person3.firstname
puts person3.lastname
puts person3.city
puts car2.currentOwner.firstname

puts person4.firstname
puts person4.lastname
puts person4.city
puts car1.currentOwner.firstname
