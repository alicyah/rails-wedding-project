puts "Starting to create Entertainments"

@entertainments = Supplier.create!([
  {
    service_name: "Evenement 21",
    description: "Evenement 21, ce sont des professionnels, artistes et techniciens au service de votre soirée. Ces experts n'ont qu'une seule mission, vous satisfaire. Pour cela, ils mettront tout en œuvre pour faire de votre soirée une véritable réussite.
      Grâce à un vaste parc de matériel haut de gamme, ces professionnels pourront répondre à tous vos besoins, du mariage intime aux cérémonies de plus grande envergure. Ils sont en mesure de répondre à tous vos besoins en matière de sonorisation,
      éclairage, projection, machine à effets, mascotte, diffusion d'images, feux d'artifices, etc.
      Vous pouvez en être sûrs: ils feront de votre événement un moment inoubliable!
      Evènement 21 fera preuve d'écoute et sera attentif à toutes vos attentes.",
    price: 700,
    originality: "Evenement 21 se charge aussi de la musique pour la cérémonie, ainsi que pour le vin d'honneur et la soirée dansante (karaoké, audiovisuel, et DJ inclus).",
    avg_rating: 5,
    service: @entertainment,
    },
    {
    service_name: "Magical Dream Factory",
    description: "Magical Dream Factory réalisera un spectacle à la hauteur du jour le plus magique de votre vie. Grâce au talent de ce prestataire vous surprendrez vos invités en leur offrant une animation originale et conviviale, empreinte de mystère. Jay Witlox, le magicien qui se cache derrière Magical Dream Factory vous propose une animation aussi mystérieuse que raffinée. Entre ses mains et à quelques centimètres de leurs yeux, les objets du quotidien sembleront échapper à tout contrôle...
      Véritable show, ce divertissement sera l'un des temps forts de votre soirée : apparition de colombes et d'un perroquet, tours interactifs avec vos convives, lévitation avec la participation de l'un de vos invités, disparation de l'assistante du magicien sous vos yeux ébahis.",
    price: 650,
    avg_rating: 4.5,
    originality: "Si l'espace le permet vous pourrez opter pour la prestation Grandes-Illusions pour un moment hors du commun!"
    service: @entertainment,
    },
    {
    service_name: "KayaBox",
    description: "Depuis quelques années les bornes à selfies se sont développées et à présent elles permettent d'imprimer instantanément toutes vos prises. Avec KayaBox, vos invités ne partirons plus les mains vides; notre Photobooth vous permettra de créer un événement qui ne laissera personne indifférent et offrira un souvenir inoubliable à tous vos invités.
      Livraison, installation, et récupération (jusqu'à 60km) inclus.",
    price: 590,
    avg_rating: 5,
    originiality: "Profitez de 500 impressions immédiates, un cadre photo et un fond personnalisés, ainsi qu'un lot d'accessoires!"
    service: @entertainment,
    },
])

puts "Entertainments created"
