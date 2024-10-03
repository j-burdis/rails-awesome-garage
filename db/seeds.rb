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

Car.create!(brand: "Nissan", model: "Qashqai", year: 2014, fuel: "Diesel", owner: jon, image_url: "https://cdn.motor1.com/images/mgl/Oq3Jo/s3/2017-nissan-qashqai.jpg")
Car.create!(brand: "Ferrari", model: "Testarossa", year: 1984, fuel: "Petrol", owner: paul, image_url: "https://www.classicdriver.com/sites/default/files/article_images/testarossa_01.jpg")

puts "Finished"
