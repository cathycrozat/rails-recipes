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
user1 = User.create!(email: "catherinecrozat@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045TDQ4M43-d011388c1f01-512")
user1.photo.attach(io: photo, filename: "profil")

puts "Creating recipes..."
recipe1 = Recipe.create!(dishname: "Tarte tatin", description: "Tarte tatin aux pommes déclicieuse", user: user1)
photo = URI.open("https://assets.afcdn.com/recipe/20180503/79001_w1000h667c1cx2880cy1920.webp")
recipe1.photo.attach(io: photo, filename: "profil")

recipe2 = Recipe.create!(dishname: 'Rillettes d’oie', description: "Rillettes", user: user1)
photo = URI.open("https://assets.afcdn.com/recipe/20170314/25138_w1000h667c1cx2880cy1920.webp")
recipe2.photo.attach(io: photo, filename: "profil")

recipe3 = Recipe.create!(dishname: 'Camembert', description: "Camembert", user: user1)
photo = URI.open("https://assets.afcdn.com/recipe/20201104/115298_w1000h668c1cx2250cy1502cxb4500cyb3004.webp")
recipe3.photo.attach(io: photo, filename: "profil")

recipe4 = Recipe.create!(dishname: 'Tarte au chocolat', description: "Tarte au chocolat", user: user1)
photo = URI.open("https://assets.afcdn.com/recipe/20210901/121767_w1000h667c1cx2592cy1728cxb5184cyb3456.webp")
recipe4.photo.attach(io: photo, filename: "profil")

recipe5 = Recipe.create!(dishname: 'Toasts au chèvre chaud',  description: "Toasts au chèvre chaud", user: user1)
photo = URI.open("https://assets.afcdn.com/recipe/20150606/47897_w1000h750c1cx1632cy1224.webp")
recipe5.photo.attach(io: photo, filename: "profil")

recipe6 = Recipe.create!(dishname: 'Omelette aux champignons', description: "Omelette aux champignons", user: user1)
photo = URI.open("https://assets.afcdn.com/recipe/20131009/59997_w1000h697c1cx1345cy938.webp")
recipe6.photo.attach(io: photo, filename: "profil")
