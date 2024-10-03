# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Owner.create!(nickname: "Jon")
Owner.create!(nickname: "Paul")
Car.create!(brand: "Nissan", model: "Qashqai", year: 2014, fuel: "Diesel", owner_id: 1)
Car.create!(brand: "Ferrari", model: "Testarossa", year: 1984, fuel: "Petrol", owner_id: 2)
