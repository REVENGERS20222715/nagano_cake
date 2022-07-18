# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(id: 1, email: "user1@example.com", password: "password", name: "huuma", role: :normal)
user2 = User.create!(id: 2, email: "user2@example.com", password: "password", name: "gggg", role: :staff)
user3 = User.create!(id: 3, email: "user３@example.com", password: "password", name: "user3", role: :normal)