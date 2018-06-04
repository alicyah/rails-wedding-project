puts "Starting to create Caterers"

array_caterers = [
  {
    owner: "Jerôme Sanchez",
    service_name: "JS Traiteur",
    description: "Pour faire de votre banquet de noces la réception qui se doit, faites appel à des professionnels de la gastronomie avec JS Traiteur.
      C'est une cuisine savoureuse et raffinée qui est la marque de cette maison. Travaillant uniquement des matières premières de grande qualité et des produits frais, la brigade vous régalera vous ainsi que vos convives avec de merveilleux buffets chauds et froids composés de verrines, bouchées et autres délices ainsi que des méchouis, des couscous, des plats de gastromie française et d’ailleurs",
    price: 50,
    avg_rating: 4.7,
    originality: "Réalisant une prestation sur-mesure pour vous offrir ce dont vous rêvez, ce traiteur d'exception saura être à votre écoute et à vos côtés tout au long de votre collaboration.",
    service: @caterer,
    },
    {
    owner: "Didier Chapuis",
    service_name: "Festins",
    description: "Votre traiteur Festins vous offre ses services et vous propose de savourer une cuisine gastronomique de qualité. Vous pourrez avoir accès aux services du traiteur Festins en Bourgogne et en région parisienne.
      Vous pourrez organiser votre cocktail ou buffet pour un maximum de 6000 invités.
      Membre de l'Association des Traiteurs de France, la fraicheur et la qualité des produits utilisés par Festins vous est garantie par leur Charte de Qualité.",
    price: 60,
    avg_rating: 4.5,
    originality: "Cuisine française élaborée et gastronomique",
    service: @caterer,
    },
    {
    owner: "Philippe Queneau",
    service_name: "L'épicurien des Vignes",
    description: "Incontournable traiteur et organisateur de réceptions dans les régions de Saône-et-Loire, Bourgogne, Allier et Rhône-Alpes, l'épicurien des Vignes propose ses services afin que vous passiez une soirées inoubliable. Derrière ce projet et derrière les fourneaux, vous retrouverez Philippe Queneau, Maitre Restaurateur. Fort de 20 ans d'expérience et formé par de grands chefs triplement étoilés, le chef saura vous proposer la prestation qui convient le mieux à vos goûts et votre budget. Pour cela il a imaginé un large choix de formules et de menus.
      Tous les produits sont rigoureusement sélectionnés par une équipe de professionnels qualifiés. Toutes les préparations sont effectuées dans le respect des normes d‘hygiène HACCP. Pour toujours rester au goût du jour, le chef attache une grande importance à suivre les dernières tendances en matière d’événements et de gastronomie.
      L’efficacité de l’épicurien des Vignes n’est plus à prouver, ils vous garantissent une logistique discrète et bien réglé afin de vous permettre de profiter pleinement de vos invités.",
    price: 30,
    avg_rating: 5,
    originality: "Non seulement les boissons et de delicieux cocktails sont inclus dans la formule, l’épicurien des Vignes peut aussi vous proposer une solution globale pour votre événement du mobilier aux chapiteaux en passant par la pyrotechnie personnalisée.",
    service: @caterer,
    },
]

@caterers = []
array_caterers.each do |supplier|
  new_supplier = Supplier.new(supplier)
  new_supplier.area = Area.where(region: "Bourgogne-Franche-Comté").first
  new_supplier.save!
  @caterers << new_supplier
end

puts "Caterers created"
