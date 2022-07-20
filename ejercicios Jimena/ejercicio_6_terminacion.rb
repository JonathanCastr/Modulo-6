
# Jonathan por favor, me lo prodrias revisar y ver si funciona, esto fue l que se me ocurrió viendo https://apis.digital.gob.cl/dpa/#inicio. Yo no puedo instalar Ruby gemas. Saludos

require 'rest-client'
require 'json'
url1 ='https://apis.digital.gob.cl/dpa/regiones?limit=10'
region = RestClient.get url1
regiones = JSON.parse(region.to_str)

url2 ='https://apis.digital.gob.cl/dpa/comunas?limit=20'
comuna = RestClient.get url2
comunas = JSON.parse(comuna.to_str)

url3 ='https://apis.digital.gob.cl/dpa/comunas/05109?geolocation=false'
comunageo = RestClient.get url2
comuna_habito = JSON.parse(comunageo.to_str)

valor_regiones = valor["orderBy=lat&orderDir=asc"] 
valor_comunas = valor["orderBy=lat&orderDir=desc"]
valor_comunas_habito =["geolocation=false"]
puts "10 regiones ordenadas ascedentemente #{valor_regiones}"
puts "20 comunas ordenadas descedentemente #{valor_comunas}"
puts "Los datos de comuna donde vivo son #{valor_comunas_habito}"

    