Area.destroy_all
Supplier.destroy_all
Service.destroy_all
Bundle.destroy_all


# CREATING SERVICES
@place = Service.create!(category: "lieu")
@caterer = Service.create!(category: "traiteur")
@musician = Service.create!(category: "musique")
@florist = Service.create!(category: "fleuriste")
@photograph = Service.create!(category: "photographe")
@entertainment = Service.create!(category: "animations")

puts "Services created"

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }


# yasmina = Supplier.find(2)
# castle = Image.new(supplier: yasmina)
# castle_url = "https://s-ec.bstatic.com/images/hotel/max1024x768/573/57346950.jpg"
# castle.remote_photo_url = castle_url
# castle.save!

puts "Finished"

