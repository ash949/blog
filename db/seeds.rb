# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.delete_all

Comment.create!(user: User.first, post: Post.first, rating: 1, body: 'bad bad bad bad bad bad bad bad bad bad bad bad bad bad bad bad bad bad bad bad bad bad bad ')
Comment.create!(user: User.first, post: Post.first, rating: 4, body: "nice nice nice nice nice nice nice nice nice nice nice nice nice nice nice nice nice nice nice nice ")
Comment.create!(user: User.first, post: Post.first, rating: 2, body: "meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh meh ")
