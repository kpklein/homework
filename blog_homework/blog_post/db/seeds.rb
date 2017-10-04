# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Post.create!(title: "post 1", body: "Some blank post")
p2 = Post.create!(title: "post 3", body: "another blank post")
p3 = Post.create!(title: "post 4", body: "yet antoher blank post")


Comment.create!(username: "Jack", body: "Some blank comment", post_id: p1.id)
Comment.create!(username: "Leo", body: "Even more blank comment", post_id: p2.id)
Comment.create!(username: "Sandy", body: "YET! Even more blank comment", post_id: p3.id)

puts "Finished Seed..."