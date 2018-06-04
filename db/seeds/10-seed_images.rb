# CREATING PHOTOGRAPHS
puts "Starting to create Images"
# hash_urls = {
#   places: [
#     [
#       "https://asset2.zankyou.com/images/wervice-card-big/bf7/89cc/1050/800/w/42028/-/1511432846.png",
#       "http://duplessis-evenement.fr/wp-content/uploads/2015/10/3bis.jpg",
#       "http://duplessis-evenement.fr/wp-content/uploads/2015/10/Grand-salon-5.jpg",
#       "https://asset1.zankyou.com/images/wervice-card-big/63d/fc9b/1050/800/w/42028/-/1496934385.jpg",
#       "https://asset3.zankyou.com/images/wervice-card-big/792/65f5/1050/800/w/42028/-/1448878694.png",
#       "http://duplessis-evenement.fr/wp-content/uploads/2015/10/9.jpg"
#     ],
#     [
#       "https://cdn5.1001salles.com/images/12217/g/D585390013A.jpg",
#       "https://cdn5.1001salles.com/images/12217/g/1516643046_6647_798560525.jpg",
#       "https://cdn5.1001salles.com/images/12217/g/1516643475_1757_260468206.jpg"
#     ],
#     [
#       "https://cdn5.1001salles.com/images/19096/g/S719267122D.jpg",
#       "https://cdn5.1001salles.com/images/19096/g/S719267122C.jpg",
#       "https://www.delaveau-fleurs.com/lacloseraie/salle5.jpg"
#     ]
#   ],
#   photographs: [
#     [
#       "http://neuvillephotography.fr/wp-content/uploads/2018/04/neuvillephotography-commanderiededormelles-mariage.jpg",
#       "http://neuvillephotography.fr/wp-content/uploads/2018/04/neuvillephotography-photographemariage-wedding-1.jpg",
#       "http://neuvillephotography.fr/wp-content/uploads/2018/05/neuvillephotography-mariageyonne-vauluisant.jpg",
#       "http://neuvillephotography.fr/wp-content/uploads/2018/04/mariageboheme-neuvillephotography-1.jpg",
#       "http://neuvillephotography.fr/wp-content/uploads/2018/04/neuvillephotography-chateaudechevillon-mariage.jpg"
#     ],
#     [
#       "https://static.wixstatic.com/media/90da5b_6e4a4ef34a1641c9b89ef10958c62579~mv2_d_5760_3840_s_4_2.jpg/v1/fill/w_680,h_453,al_c,q_90,usm_0.66_1.00_0.01/90da5b_6e4a4ef34a1641c9b89ef10958c62579~mv2_d_5760_3840_s_4_2.webp",
#       "https://static.wixstatic.com/media/90da5b_4a777b4637b9414a82bcfb651033d1b9~mv2_d_3960_2640_s_4_2.jpg/v1/fill/w_680,h_453,al_c,q_90,usm_0.66_1.00_0.01/90da5b_4a777b4637b9414a82bcfb651033d1b9~mv2_d_3960_2640_s_4_2.webp",
#       "https://static.wixstatic.com/media/548f7ab707e841bbb7b357a12da4bd19.jpg/v1/fill/w_679,h_453,al_c,q_90,usm_0.66_1.00_0.01/548f7ab707e841bbb7b357a12da4bd19.webp"
#     ],
#     [
#       "https://www.photogo.fr/media/cache/zoom/uploads/gallery/741/2877/03a42b4ee8dd0046fbe7197813ee8370.jpeg",
#       "https://www.photogo.fr/media/cache/zoom/uploads/gallery/741/2877/f95918e63360828bf895c59408ca7f37.jpeg",
#       "https://www.photogo.fr/media/cache/zoom/uploads/gallery/741/2877/8a213e4732427549baa4e36f230f2419.jpeg",
#       "https://www.photogo.fr/media/cache/zoom/uploads/gallery/741/2877/95de078c9d3961f8cfb39c26d9280336.jpeg"
#     ]
#   ],
# }

# def create_images(hash, key, suppliers)
#   hash[key].each_with_index do |array_url, index|
#     array_url.each do |url|
#       image = Image.new(supplier: suppliers[index])
#       image.remote_photo_url = url
#       image.save!
#     end
#   end
# end

# create_images(hash_urls, :places, @places)
# create_images(hash_urls, :photographs, @photographs)


puts "Images created"
