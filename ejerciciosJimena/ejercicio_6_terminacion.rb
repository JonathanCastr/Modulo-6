
# Jonathan hice cambios basándome en el de Yolanda. Quedo atenta a tu revisión final antes de subirlo. Gracias! Saludos!

#listo, solo faltaba darle el orden descendente a la segunda parte (orderDir=desc&)

require 'rest-client'
require 'json'
url1 ='https://apis.digital.gob.cl/dpa/regiones?limit=10'
region = RestClient.get url1
regiones = JSON.parse(region.to_str)
for a in regiones do
    reg_ord = a['nombre']
    puts "10 regiones ordenadas ascedentemente #{reg_ord}" 
end

url2 ='https://apis.digital.gob.cl/dpa/comunas?orderDir=desc&limit=20'
comuna = RestClient.get url2
comunas = JSON.parse(comuna.to_str)
for a in comunas do
    com_ord = a['nombre']
    puts "20 comunas ordenadas descendentemente #{com_ord}"   
end

url3 ='https://apis.digital.gob.cl/dpa/comunas/05109?geolocation=false'
comunageo = RestClient.get url3
comuna_habito = JSON.parse(comunageo.to_str)
    micomuna = comuna_habito['nombre']
    puts "Los datos de la comuna donde vivo son #{micomuna}"   



    