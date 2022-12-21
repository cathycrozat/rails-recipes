require "open-uri"
require "nokogiri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Recipe.destroy_all
User.destroy_all

puts "Creating user..."
user1 = User.create!(username: "Cathy", email: "catherinecrozat@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045TDQ4M43-d011388c1f01-512")
user1.photo.attach(io: photo, filename: "profil")

puts "Creating recipes..."
recipe1 = Recipe.create!(dishname: "Tarte tatin", description: "Tarte tatin aux pommes déclicieuse", user: user1)
photo = URI.open("https://assets.afcdn.com/recipe/20180503/79001_w1000h667c1cx2880cy1920.webp")
recipe1.photo.attach(io: photo, filename: "profil")
