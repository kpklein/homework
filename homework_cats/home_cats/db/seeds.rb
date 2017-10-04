# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Cat.create!(name: "Jack", breed: "bobcat", size: 12)
c2 = Cat.create!(name: "Molly", breed: "sillycat", size: 7)
c3 = Cat.create!(name: "Leo", breed: "smartcat", size: 4)

d1 = Home.create!(address: "mayfare avenue", flap_size: 15)
d2 = Home.create!(address: "pollington lane", flap_size: 18)

CatHome.create!(cat_id: d1.id, home_id: c1.id)
CatHome.create!(cat_id: d2.id, home_id: c2.id)
CatHome.create!(cat_id: d1.id, home_id: c3.id)


puts "Finished Seed..."