
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
comunageo = RestClient.get url3
comuna_habito = JSON.parse(comunageo.to_str)

for a in regiones do
    reg_ord = a['nombre']
    puts "10 regiones ordenadas ascedentemente #{reg_ord}" 
end


#la segunda parte aun no logro ordenarlas descendentemente pero mañana lo vemos

# for b in comunas do
#     comu = b['nombre']
#     puts "20 comunas ordenadas descedentemente #{comu}"  
# end

puts "Los datos de comuna donde vivo son #{comuna_habito}"

    