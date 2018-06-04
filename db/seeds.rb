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

caterers = Supplier.create!([
  {
    owner: "SANCHEZ Jerôme",
    service_name: "JS Traiteur",
    description: "Pour faire de votre banquet de noces la réception qui se doit, faites appel à des professionnels de la gastronomie avec JS Traiteur.
      Réalisant une prestation sur-mesure pour vous offrir ce dont vous rêvez, ce traiteur d'exception saura être à votre écoute et à vos côtés tout au long de votre collaboration.
      C'est une cuisine savoureuse et raffinée qui est la marque de cette maison. Travaillant uniquement des matières premières de grande qualité et des produits frais, la brigade vous régalera vous ainsi que vos convives avec de merveilleux buffets chauds et froids composés de verrines, bouchées et autres délices ainsi que des méchouis, des couscous, des plats de gastromie française et d'ailleurs, etc.
      N'hésitez pas à contacter dès maintenant JS Traiteur qui vous épaulera dans votre choix et votre sélection de plats en fonction de vos envies, vos goûts et votre budget.",
    price: 50,
    avg_rating: 4.7,
    originality: "Nous créons pour chaque mariages un menu selon vos envies, vos goûts et votre budget. Nous travaillons avec des producteurs locaux et la qualité des produits est notre engagement. Nous proposons le luxe du sur mesure accessible à tous.",
    service: caterer,
    },
    {
    owner: "CHAPUIS Didier",
    service_name: "Festins",
    description: "Membre de la prestigieuse Association des Traiteurs de France, votre traiteur Festins vous offre ses services et vous propose de savourer une cuisine gastronomique de qualité. Vous pourrez avoir accès aux services du traiteur Festins en Bourgogne et en région parisienne.
      Festins vous propose ses services afin que vous puissiez passer une cérémonie inoubliable. Vous pourrez organiser votre cocktail ou buffet pour vos invités et ceux-ci pourront être jusqu'au nombre de 6000.
      Membre de l'Association des Traiteurs de France, la fraicheur et la qualité des produits utilisés, vous est garantie par leur Charte de Qualité.",
    price: 60,
    avg_rating: 4.5,
    originality: "cuisine française élaborée et gastronomique",
    service: caterer,
    },
    {
    owner: "Philippe Queneau",
    service_name: "L'épicurien des Vignes",
    description: "L’Epicurien des Vignes est un traiteur et organisateur de réceptions incontournable dans les régions de Saône-et-Loire, Bourgogne, Allier et Rhône-Alpes. Derrière ce projet et derrière les fourneaux, vous retrouverez Philippe Queneau, Maitre Restaurateur. Fort de 20 ans d'expérience et formé par de grands chefs triplement étoilés, le chef saura vous proposer la prestation qui convient le mieux à vos goûts et votre budget. Pour cela il a imaginé un large choix de formules et de menus.
      Tous les produits sont rigoureusement sélectionnés par une équipe de professionnels qualifiés. Toutes les préparations sont effectuées dans le respect des normes d‘hygiène HACCP. Pour toujours rester au goût du jour, le chef attache une grande importance à suivre les dernières tendances en matière d’événements et de gastronomie.
      L’efficacité de l’épicurien des Vignes n’est plus à prouver, ils vous garantissent une logistique discrète et bien réglé afin de vous permettre de profiter pleinement de vos invités. L’épicurien des vignes peut vous proposer une solution globale pour votre événement du mobilier aux chapiteaux en passant par la pyrotechnie personnalisée.",
    price: 30,
    avg_rating: 5,
    originality: "Petit plus: formules tout compris (boissons et cocktails incroyables)",
    service: caterer
    },
])

entertainment = Supplier.create!([
  {
    service_name: "Evenement 21",
    description: "Evènement 21, ce sont des professionnels, artistes et techniciens au service de votre soirée. Ces experts n'ont qu'une seule mission, vous satisfaire. Pour cela, ils mettront tout en œuvre pour faire de votre soirée une véritable réussite.
      Grâce à un vaste parc de matériel haut de gamme, ces professionnels pourront répondre à tous vos besoins, du mariage intime aux cérémonies de plus grande envergure. Ils sont en mesure de répondre à tous vos besoins en matière de sonorisation,
      éclairage, projection, machine à effets, mascotte, diffusion d'images, feux d'artifices, etc.
      Vous pouvez en être sûrs: ils feront de votre événement un moment inoubliable!
      Evènement 21 fera preuve d'écoute et sera attentif à toutes vos attentes. Après plusieurs rendez-vous, vous établirez ensemble un cahier des charges pour votre mariage.",
    price: 700,
    avg_rating: 5,
    originality:
    service: entertainment,
    },
    {
    service_name: "Magical Dream Factory",
    description: "Magical Dream Factory réalisera un spectacle à la hauteur du jour le plus magique de votre vie. Grâce au talent de ce prestataire vous surprendrez vos invités en leur offrant une animation originale et conviviale, empreinte de mystère.
      Si l'espace le permet vous pourrez opter pour la prestation Grandes-Illusions. Véritable show, ce divertissement sera l'un des temps forts de votre soirée : apparition de colombes et d'un perroquet, tours interactifs avec vos convives, lévitation avec la participation de l'un de vos invités, disparation de l'assistante du magicien sous vos yeux ébahis.",
    price: 650,
    avg_rating: 4.5,
    originality: "Jay Witlox, le magicien qui se cache derrière Magical Dream Factory vous propose une animation aussi mystérieuse que raffinée. Entre ses mains et à quelques centimètres de leurs yeux, les objets du quotidien sembleront échapper à tout contrôle...",
    service: entertainment,
    },
    {
    service_name: "",
    description:
    price: ,
    avg_rating: 4.5,
    originality: "",
    service: entertainment,
    },
])
# yasmina = Supplier.find(2)
# castle = Image.new(supplier: yasmina)
# castle_url = "https://s-ec.bstatic.com/images/hotel/max1024x768/573/57346950.jpg"
# castle.remote_photo_url = castle_url
# castle.save!

puts "Finished"

