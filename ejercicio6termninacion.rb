require 'rest-client'
require 'json'
url ='https://apis.digital.gob.cl/dpa/regiones?limit=10'
response = RestClient.get url
result = JSON.parse(response.to_str)
puts result
for value in result do
    name = value['nombre']
    puts "El nombre de la región es #{name}"   
end
