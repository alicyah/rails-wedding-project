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

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

puts "Finished"

