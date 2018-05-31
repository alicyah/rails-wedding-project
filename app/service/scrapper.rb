require 'nokogiri'
require 'open-uri'

class Scrapper

  def find_name_wedding_place
    full_url = 'https://www.mariages.net/domaine-mariage/ile-de-france'
    doc = Nokogiri::HTML(open(full_url), nil, 'utf-8')
    puts doc.search('.item-title').text.strip
  end

  def find_description_wedding_place
    full_url = 'https://www.mariages.net/domaine-mariage/ile-de-france'
    doc = Nokogiri::HTML(open(full_url), nil, 'utf-8')
    puts doc.search('.item-desc').text.strip
  end



  full_url = 'https://www.mariages.net/domaine-mariage/ile-de-france'
  doc = Nokogiri::HTML(open(full_url), nil, 'utf-8')
  result_array = doc.search('.item-faqs-value').text.split
  # p capacity_min = result_array[1]
  # p capacity_max = result_array.last
  p price = [ result_array[0],
              result_array[4],
              result_array[8],
              result_array[12],
              result_array[16],
              result_array[20],
              result_array[27],
              result_array[31],
              result_array[35],
              result_array[39] ]


  # puts find_name_wedding_place
  # puts find_description_wedding_place
  # puts find_capacity_wedding_place

end
