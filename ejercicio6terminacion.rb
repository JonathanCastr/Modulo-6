require 'rest-client'
require 'json'

url ='https://apis.digital.gob.cl/dpa/regiones'
response = RestClient.get url
result = JSON.parse(response.to_str)
for value in result do
    name = value['nombre']
    puts "El nombre de la región es #{name}"   
end
puts "Presione <ENTER> para continuar"
gets.chomp
url2 ='https://apis.digital.gob.cl/dpa/comunas?orderDir=desc&limit=20'
response2 = RestClient.get url2
result2 = JSON.parse(response2.to_str)
for value in result2 do
    name2 = value['nombre']
    puts "El nombre de la comuna es #{name2}"   
end
puts "Presione <ENTER> para continuar"
gets.chomp
url3 ='https://apis.digital.gob.cl/dpa/comunas/05101'
response3 = RestClient.get url3
result3 = JSON.parse(response3.to_str)
micomuna = result3['nombre']
puts "El nombre de la comuna donde vivo es: #{micomuna}" 
puts "Presione <ENTER> para finalizar"
gets.chomp