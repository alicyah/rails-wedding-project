# CREATING AREAS
areas = Area.create!([
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
