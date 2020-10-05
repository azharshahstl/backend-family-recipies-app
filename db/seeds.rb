# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: 'Azhar', email: 'a@a.com', password: '123')
user2 = User.create(name: 'Kyra', email: 'k@a.com', password: '123')
user1 = User.create(name: 'Arif', email: 'aa@a.com', password: '123')

cuisine1 = Cuisine.create(kind: "Italian")
cuisine2 = Cuisine.create(kind: "Pakistani")
cuisine3 = Cuisine.create(kind: "Bubba")

recipe1 = Recipe.create(user_id: 1, cuisine_id: 1, name: "Chicken and Cumin", ingredients: "chicken, cumin, salt", directions: "Fry chicken in oil, then add salt and cumin")
recipe2 = Recipe.create(user_id: 1, cuisine_id: 2, name: 'Lamb and cumin', ingredients: "lamb, cumin, salt", directions: "Fry lamb in oil, then add salt and cumin")
recipe3 = Recipe.create(user_id: 2, cuisine_id: 2, name: 'Beef and basil', ingredients: "beef, basil, salt", directions: "Fry beef in oil, then add salt and basil")
recipe4 = Recipe.create(user_id: 3, cuisine_id: 3, name: 'Pork and cumin', ingredients: "pork cumin, salt", directions: "Fry pork in oil, then add salt and cumin")
