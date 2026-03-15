# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: 'La Raclette', address: 'Curepipe', phone_number: '02030405', category: 'french')
puts "Created La Raclette"

Restaurant.create!(name: "Pizza Hut", address: "Grand Bay", phone_number: "72459076", category: "italian")
puts "Created Pizza Hut"

Restaurant.create!(name: "Surf & Turf", address: "Pointe d'Esny", phone_number: "67040506", category: "japanese")
puts "Created Surf & Turf"

Restaurant.create!(name: "Dragon Wok", address: "Port-Louis", phone_number: "50607089", category: "chinese")
puts "Created Dragon Wok"

Restaurant.create!(name: "Moules Frites", address: "Calodyne", phone_number: "06070809", category: "belgian")
puts "Created Moules Frites"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
