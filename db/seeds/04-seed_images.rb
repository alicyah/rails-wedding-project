# CREATING PHOTOGRAPHS
puts "Starting to create Images"
url = [
  "https://asset2.zankyou.com/images/wervice-card-big/bf7/89cc/1050/800/w/42028/-/1511432846.png",
  "http://duplessis-evenement.fr/wp-content/uploads/2015/10/3bis.jpg",
  "http://duplessis-evenement.fr/wp-content/uploads/2015/10/Grand-salon-5.jpg",
  "https://asset1.zankyou.com/images/wervice-card-big/63d/fc9b/1050/800/w/42028/-/1496934385.jpg",
  "https://asset3.zankyou.com/images/wervice-card-big/792/65f5/1050/800/w/42028/-/1448878694.png",
  "http://duplessis-evenement.fr/wp-content/uploads/2015/10/9.jpg",
]
images = {
  supplier: @places[0],
}
end
images.each_with_index do |image, index|
  image = Image.new()

puts "Images created"
