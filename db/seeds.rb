# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Product.create(name: "iphone", description: "smartphone", price: 10000)
names = ["iphone", "mouse", "lamp", "laptop", "coffee_mug"]
descriptions =["s", "f", "e", "w", "i"]
prices = [1000, 500, 3, 5, 6]

5.times do |i|
  Product.create(
    name: names.sample,
    description: descriptions.sample,
    price_in_cents: prices.sample
  )
end
