# CREATING PHOTOGRAPHS
puts "Starting to create Images"
hash_urls = {
  places: [
    [
      "https://asset2.zankyou.com/images/wervice-card-big/bf7/89cc/1050/800/w/42028/-/1511432846.png",
      "http://duplessis-evenement.fr/wp-content/uploads/2015/10/3bis.jpg",
      "http://duplessis-evenement.fr/wp-content/uploads/2015/10/Grand-salon-5.jpg",
      "https://asset1.zankyou.com/images/wervice-card-big/63d/fc9b/1050/800/w/42028/-/1496934385.jpg",
      "https://asset3.zankyou.com/images/wervice-card-big/792/65f5/1050/800/w/42028/-/1448878694.png",
      "http://duplessis-evenement.fr/wp-content/uploads/2015/10/9.jpg"
    ],
    [
      "https://cdn5.1001salles.com/images/12217/g/D585390013A.jpg",
      "https://cdn5.1001salles.com/images/12217/g/1516643046_6647_798560525.jpg",
      "https://cdn5.1001salles.com/images/12217/g/1516643475_1757_260468206.jpg"
    ],
    [
      "https://cdn5.1001salles.com/images/19096/g/S719267122D.jpg",
      "https://cdn5.1001salles.com/images/19096/g/S719267122C.jpg",
      "https://www.delaveau-fleurs.com/lacloseraie/salle5.jpg"
    ]
  ],
  photographs: [
    [
      "http://neuvillephotography.fr/wp-content/uploads/2018/04/neuvillephotography-commanderiededormelles-mariage.jpg",
      "http://neuvillephotography.fr/wp-content/uploads/2018/04/neuvillephotography-photographemariage-wedding-1.jpg",
      "http://neuvillephotography.fr/wp-content/uploads/2018/05/neuvillephotography-mariageyonne-vauluisant.jpg",
      "http://neuvillephotography.fr/wp-content/uploads/2018/04/mariageboheme-neuvillephotography-1.jpg",
      "http://neuvillephotography.fr/wp-content/uploads/2018/04/neuvillephotography-chateaudechevillon-mariage.jpg"
    ],
    [
      "https://static.wixstatic.com/media/90da5b_6e4a4ef34a1641c9b89ef10958c62579~mv2_d_5760_3840_s_4_2.jpg/v1/fill/w_680,h_453,al_c,q_90,usm_0.66_1.00_0.01/90da5b_6e4a4ef34a1641c9b89ef10958c62579~mv2_d_5760_3840_s_4_2.webp",
      "https://static.wixstatic.com/media/90da5b_4a777b4637b9414a82bcfb651033d1b9~mv2_d_3960_2640_s_4_2.jpg/v1/fill/w_680,h_453,al_c,q_90,usm_0.66_1.00_0.01/90da5b_4a777b4637b9414a82bcfb651033d1b9~mv2_d_3960_2640_s_4_2.webp",
      "https://static.wixstatic.com/media/548f7ab707e841bbb7b357a12da4bd19.jpg/v1/fill/w_679,h_453,al_c,q_90,usm_0.66_1.00_0.01/548f7ab707e841bbb7b357a12da4bd19.webp"
    ],
    [
      "https://www.photogo.fr/media/cache/zoom/uploads/gallery/741/2877/03a42b4ee8dd0046fbe7197813ee8370.jpeg",
      "https://www.photogo.fr/media/cache/zoom/uploads/gallery/741/2877/f95918e63360828bf895c59408ca7f37.jpeg",
      "https://www.photogo.fr/media/cache/zoom/uploads/gallery/741/2877/8a213e4732427549baa4e36f230f2419.jpeg",
      "https://www.photogo.fr/media/cache/zoom/uploads/gallery/741/2877/95de078c9d3961f8cfb39c26d9280336.jpeg"
    ]
  ],
  caterers: [
    [
      "http://www.jstraiteur.fr/assets/images/nos-plats/traiteur-seminaire-lyon-01.jpg",
      "http://www.jstraiteur.fr/assets/images/nos-plats/traiteur-seminaire-lyon-02.jpg",
      "http://www.jstraiteur.fr/assets/images/nos-plats/traiteur-seminaire-lyon-06.jpg",
      "http://www.jstraiteur.fr/assets/images/nos-plats/traiteur-seminaire-lyon-08.jpg",
      "http://www.jstraiteur.fr/assets/images/nos-plats/traiteur-seminaire-lyon-21.jpg"
    ],
    [
      "https://cdn20.traiteurs.fr/site/company/65/39161/images/350123/buffet_ci3.jpg",
      "https://cdn0.mariages.net/opinion/fotos/8/9/2/8/t30_132946.jpg",
      "https://cdn0.mariages.net/opinion/fotos/8/7/2/3/t30_73198.jpg",
      "https://cdn0.mariages.net/opinion/fotos/8/9/1/6/t30_132946.jpg",
      "https://cdn0.mariages.net/opinion/fotos/8/9/1/8/t30_132946.jpg",
      "https://cdn0.mariages.net/opinion/fotos/8/9/2/4/t30_132946.jpg"
    ],
    [
      "https://cdn0.mariages.net/opinion/fotos/4/1/2/8/t30_139658.jpg",
      "https://cdn0.mariages.net/opinion/fotos/2/2/4/2/t30_125650.jpg",
      "https://cdn0.mariages.net/opinion/fotos/4/1/2/0/t30_139658.jpg",
      "https://cdn0.mariages.net/opinion/fotos/1/7/1/2/t30_182640.jpg",
      "http://www.mariage-epicurien.com/assets/cache/images/dineretsoiree/1000x-diner10.b0c.jpg",
      https://cdn.pixabay.com/photo/2015/09/20/14/01/cocktails-948353_1280.jpg
    ]
  ],
  entertainments: [
    [
      "http://www.weddingmarathon.com/wp-content/uploads/2015/12/wed-confetti.jpg",
      "http://www.geelongfireworks.com.au/resources/windmillwed.jpg",
      "http://www.weddingwindow.com/blog/wp-content/uploads/2013/10/Wedding-DJ.jpg",
      "http://www.adeleleephotography.com/website/wp-content/uploads/2017/07/2017-07-05_0024.jpg"

    ],
    [
      "https://i.ytimg.com/vi/7K-3IlSJ3zI/maxresdefault.jpg",
      "http://cdn1.mariages.net/emp/videos/2/1/4/21655t30_jay-witlox-teaser-2014.jpg",
      "http://www.designingentertainment.lu/uploads/2/6/1/9/26195533/___1460090144.png",
      "https://cdn0.mariages.net/opinion/fotos/3/5/1/2/t30_116214.jpg",
      "https://cdn0.mariages.net/opinion/fotos/3/5/1/4/t30_116214.jpg"
    ],
    [
      "https://www.hitched.co.uk/images/articles/unusual-photobooth.jpg",
      "https://mon-photobooth.fr/img/cms/photobooth-mariage.jpg",
      "https://i.pinimg.com/originals/00/ed/0f/00ed0f0ab84c132bf963e0adbacf8266.jpg",
      "https://i.pinimg.com/originals/8a/4e/13/8a4e138ad349ff29206eae4a544c4458.jpg",
      "https://des-clics-photos.fr//img/cms/stand_photobooth02.jpg"
    ],
  ]
}

def create_images(hash, key, suppliers)
  hash[key].each_with_index do |array_url, index|
    array_url.each do |url|
      image = Image.new(supplier: suppliers[index])
      image.remote_photo_url = url
      image.save!
    end
  end
end

create_images(hash_urls, :places, @places)
create_images(hash_urls, :photographs, @photographs)
create_images(hash_urls, :caterers, @caterers)
create_images(hash_urls, :entertainments, @entertainments)

puts "Images created"
