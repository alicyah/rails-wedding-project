puts "Starting to create Caterers"
@caterers = Supplier.create!([
  {
    owner: "Jerôme Sanchez",
    service_name: "JS Traiteur",
    description: "Pour faire de votre banquet de noces la réception qui se doit, faites appel à des professionnels de la gastronomie avec JS Traiteur.
      Réalisant une prestation sur-mesure pour vous offrir ce dont vous rêvez, ce traiteur d'exception saura être à votre écoute et à vos côtés tout au long de votre collaboration.
      C'est une cuisine savoureuse et raffinée qui est la marque de cette maison. Travaillant uniquement des matières premières de grande qualité et des produits frais, la brigade vous régalera vous ainsi que vos convives avec de merveilleux buffets chauds et froids composés de verrines, bouchées et autres délices ainsi que des méchouis, des couscous, des plats de gastromie française et d'ailleurs, etc.
      N'hésitez pas à contacter dès maintenant JS Traiteur qui vous épaulera dans votre choix et votre sélection de plats en fonction de vos envies, vos goûts et votre budget.",
    price: 50,
    avg_rating: 4.7,
    originality: "Nous créons pour chaque mariages un menu selon vos envies, vos goûts et votre budget. Nous travaillons avec des producteurs locaux et la qualité des produits est notre engagement. Nous proposons le luxe du sur mesure accessible à tous.",
    service: @caterer,
    },
    {
    owner: "Didier Chapuis",
    service_name: "Festins",
    description: "Membre de la prestigieuse Association des Traiteurs de France, votre traiteur Festins vous offre ses services et vous propose de savourer une cuisine gastronomique de qualité. Vous pourrez avoir accès aux services du traiteur Festins en Bourgogne et en région parisienne.
      Festins vous propose ses services afin que vous puissiez passer une cérémonie inoubliable. Vous pourrez organiser votre cocktail ou buffet pour vos invités et ceux-ci pourront être jusqu'au nombre de 6000.
      Membre de l'Association des Traiteurs de France, la fraicheur et la qualité des produits utilisés, vous est garantie par leur Charte de Qualité.",
    price: 60,
    avg_rating: 4.5,
    originality: "cuisine française élaborée et gastronomique",
    service: @caterer,
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
    service: @caterer,
    },
])
puts "Caterers created"
