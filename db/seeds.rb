# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts ""

Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

puts "Database serviced"

puts "Manufacturing motors"

jon = Owner.create!(nickname: "Jon")
paul = Owner.create!(nickname: "Paul")

Car.create!(brand: "Ferrari", model: "Purosangue", year: 2022, fuel: "Petrol", owner: jon, image_url: "https://luxferity.com/up/blog/content/ferrari-purosangue-09-1200x800.jpg")
Car.create!(brand: "Ferrari", model: "275 Rosso Chiaro", year: 1967, fuel: "Petrol", owner: paul, image_url: "https://cdn.dicklovett.co.uk/uploads/used_stock_image/1_1291326_e.jpg?v=1693308608")
Car.create!(brand: "Ferrari", model: "458 Spider", year: 2013, fuel: "Petrol", owner: jon, image_url: "https://simonfurlonger.co.uk/wp-content/uploads/2023/09/DP6_3045.jpg")
Car.create!(brand: "Ferrari", model: "Daytona", year: 1971, fuel: "Petrol", owner: paul, image_url: "https://images.pistonheads.com/nimg/48079/001-23.jpg")
Car.create!(brand: "Ferrari", model: "12 Cilindri", year: 2014, fuel: "Petrol", owner: jon, image_url: "https://carconfigurator.ferrari.com/rt-assets/data/cars/12cilindri/ui/splashpage.jpg")
Car.create!(brand: "Ferrari", model: "Roma", year: 2019, fuel: "Petrol", owner: paul, image_url: "https://carconfigurator.ferrari.com/rt-assets/data/cars/roma/ui/splashpage.jpg")
Car.create!(brand: "Ferrari", model: "288 GTO", year: 1984, fuel: "Petrol", owner: paul, image_url: "https://www.supercars.net/blog/wp-content/uploads/2016/04/288-gto.jpeg")
Car.create!(brand: "Ferrari", model: "SF90 XX Stradale", year: 2024, fuel: "Petrol", owner: jon, image_url: "https://carconfigurator.ferrari.com/rt-assets/data/cars/sf90xxstradale/ui/splashpage.jpg")
Car.create!(brand: "Ferrari", model: "Enzo", year: 2005, fuel: "Petrol", owner: jon, image_url: "https://images.girardo.com/girardo/image/upload/c_fill/2021/09/2005-ferrari-enzo-138879-101-resize.jpg")
Car.create!(brand: "Ferrari", model: "Testarossa", year: 1984, fuel: "Petrol", owner: paul, image_url: "https://www.classicdriver.com/sites/default/files/article_images/testarossa_01.jpg")

puts "Finished"
