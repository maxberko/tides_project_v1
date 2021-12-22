require 'HTTParty'
require 'json'

start_date = '2022-12-22'
end_date = '2022-12-23'

lat = 43.4831519;
lng = -1.558626;

headers = {
  "Authorization": "8902712a-5c25-11ec-b9d3-0242ac130002-89027206-5c25-11ec-b9d3-0242ac130002"
}

response = HTTParty.get(
  "https://api.stormglass.io/v2/tide/extremes/point?lat=#{lat}&lng=#{lng}&start=#{start_date}&end=#{end_date}",
  :headers => headers
)

tide_set = response["data"]

#choper tide_set qui est un array de hash qui sont les extrêmes des marées de chaque journée
#chaque hash a trois hash qui le constituent

#la hauteur de la marée
#l'heure
#si c'est une marée haute ou basse

#je veux récupérer, pour chaque élément dans le hash, l'heure et si c'est haut ou bas et l'afficher

#je dois rentrer dans l'array
#et pour chaque élément dahs


tide_set.each do |tide_extreme|
  # tide_extreme.each do |key, value|
  #   puts tide_extreme.values
  # end
  puts tide_extreme.values
end
