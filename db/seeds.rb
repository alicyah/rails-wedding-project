Area.destroy_all

areas = Area.create!([
  {country: "France", region: nil, department: nil},
  {country: "France", region: "Bourgogne - Franche-Comté ", department: nil},
  {country: "France", region: "Nouvelle Aquitaine", department: nil},
  {country: "France", region: "Normandie", department: nil},
  {country: "France", region: "Grand Est", department: nil},
  {country: "France", region: "Occitanie", department: nil},
  {country: "France", region: "Hauts-de-France", department: nil},
  {country: "France", region: "Auvergne - Rhône-Alpes", department: nil},
  {country: "France", region: "Bretagne", department: nil},
  {country: "France", region: "Centre - Val de Loire", department: nil},
  {country: "France", region: "Corse", department: nil},
  {country: "France", region: "Pays de la Loire", department: nil},
  {country: "France", region: "Provence - Alpes - Côte d'Azur", department: nil},
  {country: "France", region: "Île-de-France", department: nil},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "1 - Ain"},
  {country: "France", region: "Hauts-de-France", department: "2 - Aisne"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "3 - Allier"},
  {country: "France", region: "Provence-Alpes-Côte d'Azur", department: "4 - Alpes-de-Haute-Provence"},
  {country: "France", region: "Provence-Alpes-Côte d'Azur", department: "5 - Hautes-Alpes"},
  {country: "France", region: "Provence-Alpes-Côte d'Azur", department: "6 - Alpes-Maritimes"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "7 - Ardèche"},
  {country: "France", region: "Grand Est", department: "8 - Ardennes"},
  {country: "France", region: "Occitanie", department: "9 - Ariège"},
  {country: "France", region: "Grand Est", department: "10 - Aube"},
  {country: "France", region: "Occitanie", department: "11 - Aude"},
  {country: "France", region: "Occitanie", department: "12 - Aveyron"},
  {country: "France", region: "Provence-Alpes-Côte d'Azur", department: "13 - Bouches-du-Rhône"},
  {country: "France", region: "Normandie", department: "14 - Calvados"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "15 - Cantal"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "16 - Charente"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "17 - Charente-Maritime"},
  {country: "France", region: "Centre-Val de Loire", department: "18 - Cher"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "19 - Corrèze"},
  {country: "France", region: "Corse", department: "2A Corse-du-Sud"},
  {country: "France", region: "Corse", department: "2B-Haute-Corse"},
  {country: "France", region: "Bourgogne-Franche-Comté", department: "21 - Côte-d'Or"},
  {country: "France", region: "Bretagne", department: "22 - Côtes-d'Armor"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "23 - Creuse"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "24 - Dordogne"},
  {country: "France", region: "Bourgogne-Franche-Comté", department: "25 - Doubs"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "26 - Drôme"},
  {country: "France", region: "Normandie", department: "27 - Eure"},
  {country: "France", region: "Centre-Val de Loire", department: "28 - Eure-et-Loir"},
  {country: "France", region: "Bretagne", department: "29 - Finistère"},
  {country: "France", region: "Occitanie", department: "30 - Gard"},
  {country: "France", region: "Occitanie", department: "31 - Haute-Garonne"},
  {country: "France", region: "Occitanie", department: "32 - Gers"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "33 - Gironde"},
  {country: "France", region: "Occitanie", department: "34 - Hérault"},
  {country: "France", region: "Bretagne", department: "35 - Ille-et-Vilaine"},
  {country: "France", region: "Centre-Val de Loire", department: "36 - Indre"},
  {country: "France", region: "Centre-Val de Loire", department: "37 - Indre-et-Loire"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "38 - Isère"},
  {country: "France", region: "Bourgogne-Franche-Comté", department: "39 - Jura"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "40 - Landes"},
  {country: "France", region: "Centre-Val de Loire", department: "41 - Loir-et-Cher"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "42 - Loire"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "43 - Haute-Loire"},
  {country: "France", region: "Pays de la Loire", department: "44 - Loire-Atlantique"},
  {country: "France", region: "Centre-Val de Loire", department: "45 - Loiret"},
  {country: "France", region: "Occitanie", department: "46 - Lot"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "47 - Lot-et-Garonne"},
  {country: "France", region: "Occitanie", department: "48 - Lozère"},
  {country: "France", region: "Pays de la Loire", department: "49 - Maine-et-Loire"},
  {country: "France", region: "Normandie", department: "50 - Manche"},
  {country: "France", region: "Grand Est", department: "51 - Marne"},
  {country: "France", region: "Grand Est", department: "52 - Haute-Marne"},
  {country: "France", region: "Pays de la Loire", department: "53 - Mayenne"},
  {country: "France", region: "Grand Est", department: "54 - Meurthe-et-Moselle"},
  {country: "France", region: "Grand Est", department: "55 - Meuse"},
  {country: "France", region: "Bretagne", department: "56 - Morbihan"},
  {country: "France", region: "Grand Est", department: "57 - Moselle"},
  {country: "France", region: "Bourgogne-Franche-Comté", department: "58 - Nièvre"},
  {country: "France", region: "Hauts-de-France", department: "59 - Nord"},
  {country: "France", region: "Hauts-de-France", department: "60 - Oise"},
  {country: "France", region: "Normandie", department: "61 - Orne"},
  {country: "France", region: "Hauts-de-France", department: "62 - Pas-de-Calais"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "63 - Puy-de-Dôme"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "64 - Pyrénées-Atlantiques"},
  {country: "France", region: "Occitanie", department: "65 - Hautes-Pyrénées"},
  {country: "France", region: "Occitanie", department: "66 - Pyrénées-Orientales"},
  {country: "France", region: "Grand Est", department: "67 - Bas-Rhin"},
  {country: "France", region: "Grand Est", department: "68 - Haut-Rhin"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "69 - Circonscription départementale du Rhône"},
  {country: "France", region: "Bourgogne-Franche-Comté", department: "70 - Haute - Saône"},
  {country: "France", region: "Bourgogne-Franche-Comté", department: "71 - Saône-et-Loire"},
  {country: "France", region: "Pays de la Loire", department: "72 - Sarthe"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "73 - Savoie"},
  {country: "France", region: "Auvergne-Rhône-Alpes", department: "74 - Haute-Savoie"},
  {country: "France", region: "Île-de-France", department: "75 - Paris"},
  {country: "France", region: "Normandie", department: "76 - Seine-Maritime"},
  {country: "France", region: "Île-de-France", department: "77 - Seine-et-Marne"},
  {country: "France", region: "Île-de-France", department: "78 - Yvelines"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "79 - Deux-Sèvres"},
  {country: "France", region: "Hauts-de-France", department: "80 - Somme"},
  {country: "France", region: "Occitanie", department: "81 - Tarn"},
  {country: "France", region: "Occitanie", department: "82 - Tarn-et-Garonne"},
  {country: "France", region: "Provence-Alpes-Côte d'Azur", department: "83 - Var"},
  {country: "France", region: "Provence-Alpes-Côte d'Azur", department: "84 - Vaucluse"},
  {country: "France", region: "Pays de la Loire", department: "85 - Vendée"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "86 - Vienne"},
  {country: "France", region: "Nouvelle-Aquitaine", department: "87 - Haute-Vienne"},
  {country: "France", region: "Grand Est", department: "88 - Vosges"},
  {country: "France", region: "Bourgogne-Franche-Comté", department: "89 - Yonne"},
  {country: "France", region: "Bourgogne-Franche-Comté", department: "90 - Territoire de Belfort"},
  {country: "France", region: "Île-de-France", department: "91 - Essonne"},
  {country: "France", region: "Île-de-France", department: "92 - Hauts-de-Seine"},
  {country: "France", region: "Île-de-France", department: "93 - Seine-Saint-Denis"},
  {country: "France", region: "Île-de-France", department: "94 - Val-de-Marne"},
  {country: "France", region: "Île-de-France", department: "95 - Val-d'Oise"},
  {country: "France", region: "Guadeloupe", department: "971 - Guadeloupe"},
  {country: "France", region: "Martinique", department: "972 - Martinique"},
  {country: "France", region: "Guyane", department: "973 - Guyane"},
  {country: "France", region: "La Réunion", department: "974 - La Réunion"},
  {country: "France", region: "La Réunion", department: "976 - Mayotte"}
])

puts "Areas created"

services = Service.create([
  {
    category: "traiteur",
    name: "charles traiteur"
    },
  {
    category: "traiteur",
    name: "alicia traiteur"
    },
  {
    category: "traiteur",
    name: "yasmina traiteur"
    },
  {
    category: "traiteur",
    name: "kevin traiteur"
    },
  {
    category: "musique",
    name: "charles musique"
    },
  {
    category: "musique",
    name: "alicia musique"
    },
  {
    category: "musique",
    name: "yasmina musique"
    },
  {
    category: "musique",
    name: "julien musique"
    },
  {
    category: "fleuriste",
    name: "charles fleuriste"
    },
  {
    category: "fleuriste",
    name: "pierre fleuriste"
    },
  {
    category: "fleuriste",
    name: "maxime fleuriste"
    },
  {
    category: "fleuriste",
    name: "patrick fleuriste"
    },
  {
    category: "photographe",
    name: "charles photographe"
    },
  {
    category: "photographe",
    name: "pierre photographe"
    },
  {
    category: "photographe",
    name: "max photographe"
    },
  {
    category: "photographe",
    name: "xav photographe"
    },
  {
    category: "animations",
    name: "charles animations"
    },
  {
    category: "animations",
    name: "pierre animations"
    },
  {
    category: "animations",
    name: "oliver animations"
    },
  {
    category: "animations",
    name: "basile animations"
  }
])

puts "Services created"

suppliers = Supplier.create!([
  {
    owner: "charles",
    description: "coooool",
    email: "charles@gmail.com",
    service: services[0]
    },
  {
    owner: "alicia",
    description: "coooool",
    email: "alicia@gmail.com",
    service: services[1]    },
  {
    owner: "yasmina",
    description: "coooool",
    email: "yasmina@gmail.com",
    service: services[2]    },
  {
    owner: "kevin",
    description: "coooool",
    email: "kevin@gmail.com",
    service: services[3]    },
  {
    owner: "charles",
    description: "coooool",
    email: "charles@gmail.com",
    service: services[4]    },
  {
    owner: "alicia",
    description: "coooool",
    email: "alicia@gmail.com",
    service: services[5]    },
  {
    owner: "yasmina",
    description: "coooool",
    email: "yasmina@gmail.com",
    service: services[6]    },
  {
    owner: "julien",
    description: "coooool",
    email: "julien@gmail.com",
    service: services[7]    },
  {
    owner: "charles",
    description: "coooool",
    email: "charles@gmail.com",
    service: services[8]    },
  {
    owner: "pierre",
    description: "coooool",
    email: "pierre@gmail.com",
    service: services[9]
    },
  {
    owner: "maxime",
    description: "coooool",
    email: "maxime@gmail.com",
    service: services[10]
    },
  {
    owner: "patrick",
    description: "coooool",
    email: "patrick@gmail.com",
    service: services[11]
    },
  {
    owner: "charles",
    description: "coooool",
    email: "charles@gmail.com",
    service: services[12]
    },
  {
    owner: "pierre",
    description: "coooool",
    email: "pierre@gmail.com",
    service: services[13]
    },
  {
    owner: "max",
    description: "coooool",
    email: "max@gmail.com",
    service: services[14]
    },
  {
    owner: "xav",
    description: "coooool",
    email: "xav@gmail.com",
    service: services[15]
    },
  {
    owner: "charles",
    description: "coooool",
    email: "charles@gmail.com",
    service: services[16]
    },
  {
    owner: "pierre",
    description: "coooool",
    email: "pierre@gmail.com",
    service: services[17]
    },
  {
    owner: "oliver",
    description: "coooool",
    email: "oliver@gmail.com",
    service: services[18]
    },
  {
    owner: "basile",
    description: "coooool",
    email: "basile@gmail.com",
    service: services[19]
  }
])

puts "Suppliers created"

yasmina = Supplier.find(2)
castle = Image.new(supplier: yasmina)
castle_url = "https://s-ec.bstatic.com/images/hotel/max1024x768/573/57346950.jpg"
castle.remote_photo_url = castle_url
castle.save!

puts "Finished"
