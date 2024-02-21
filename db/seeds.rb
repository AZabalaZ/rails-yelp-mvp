puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "1111111111", category:"chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "2222222222", category:"italian"}
zitto = {name: "zitto", address: "8 Boundary St, Paris E2 7JE", phone_number: "3333333333", category:"japanese"}
chachingo = {name: "chachingo", address: "Peatonal", phone_number: "4444444444", category:"french"}
club_de_la_milanesa = {name: "Club de la milanesa", address: "Maipu", phone_number: "5555555555", category:"belgian"}

[dishoom, pizza_east, zitto, chachingo, club_de_la_milanesa].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
