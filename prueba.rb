require 'rest-client'
require 'json'
url = 'https://mindicador.cl/api/dolar/20-07-2022'
dolard = RestClient.get url
dolar = JSON.parse(dolard.to_str)


url2 = 'https://mindicador.cl/api/euro/20-07-2022'
eurod = RestClient.get url2
euro = JSON.parse(eurod.to_str)

url3 = 'https://mindicador.cl/api/bitcoin/17-07-2022'
bitcoind = RestClient.get url3
bitcoin = JSON.parse(bitcoind.to_str)


valor_dolar = dolar["serie"][0]["valor"]
valor_euro = euro["serie"][0]["valor"]
valor_bitcoin = bitcoin["serie"][0]["valor"]

puts "El valor del dolar es #{valor_dolar}"
puts "El valor del Euro es #{valor_euro}"
puts "El valor del Bitcoin es #{valor_bitcoin}"