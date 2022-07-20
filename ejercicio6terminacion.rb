require 'rest-client'
require 'json'
url ='https://apis.digital.gob.cl/dpa/regiones?limit=10'
response = RestClient.get url
result = JSON.parse(response.to_str)

    result.each do |llave,clave|
        puts clave
        if llave == "nombre"
            puts "El nombre de la región es #{clave}"
        end
    end


#name = result['nombre']
#puts "El nombre de la comuna es #{name}"