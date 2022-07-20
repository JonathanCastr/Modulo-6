require 'rest-client'
require 'json'
url ='https://apis.digital.gob.cl/dpa/regiones/05'
response = RestClient.get url
result = JSON.parse(response.to_str)
puts result
puts
name = result['nombre']
puts "El nombre de la región es #{name}"