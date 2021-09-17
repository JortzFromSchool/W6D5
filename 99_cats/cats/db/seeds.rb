# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
tom = Cat.create(birthdate: '2015/01/01', color: 'brown', name: 'tom', sex: 'M', description: 'Tom is the best' )
mike = Cat.create(birthdate: '2017/01/01', color: 'white', name: 'mike', sex: 'M', description: 'Mike is the best' )
evan = Cat.create(birthdate: '2014/01/01', color: 'black', name: 'evan', sex: 'M', description: 'Evan is the best' )
cathy = Cat.create(birthdate: '2013/01/01', color: 'grey', name: 'cathy', sex: 'F', description: 'Cathy is the best' )

