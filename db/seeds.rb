Area.destroy_all
Image.destroy_all
Availability.destroy_all
Supplier.destroy_all
Service.destroy_all
Bundle.destroy_all

# CREATING SERVICES

puts "Creating services"

@place = Service.create!(category: "lieu")
@caterer = Service.create!(category: "traiteur")
@musician = Service.create!(category: "musique")
@florist = Service.create!(category: "fleuriste")
@photograph = Service.create!(category: "photographe")
@entertainment = Service.create!(category: "animations")

puts "Services created"

# CREATING AREAS

puts "Creating areas"

@areas = Area.create!([
  {country: "France", region: nil},
  {country: "France", region: "Bourgogne-Franche-Comté "},
  {country: "France", region: "Nouvelle Aquitaine"},
  {country: "France", region: "Normandie"},
  {country: "France", region: "Grand Est"},
  {country: "France", region: "Occitanie"},
  {country: "France", region: "Hauts-de-France"},
  {country: "France", region: "Auvergne-Rhône-Alpes"},
  {country: "France", region: "Bretagne"},
  {country: "France", region: "Centre-Val de Loire"},
  {country: "France", region: "Corse"},
  {country: "France", region: "Pays de la Loire"},
  {country: "France", region: "Provence-Alpes-Côte d'Azur"},
  {country: "France", region: "Île-de-France"},
  ])

puts "Areas created"

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

# ASSIGNING AREAS TO SUPPLIERS

Supplier.all.each do |supplier|
  supplier.area = Area.where(region: "Bourgogne-Franche-Comté")
  supplier.save!
end

puts "Suppliers updated"
puts "Finished"

