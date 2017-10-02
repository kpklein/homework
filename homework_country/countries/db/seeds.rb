# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Country.create!(name: "ugandaaa", population: 2324, language: "ugandian", president:"shima")
Country.create!(name: "india", population: 4324, language: "hindi", president:"bruva")
Country.create!(name: "somalia", population: 6324, language: "somali", president:"tutu")


puts "Finished Seed..."