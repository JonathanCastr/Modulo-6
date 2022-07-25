require "./classes/tuner.rb"
require "./classes/radio.rb"

#Creando una radio
puts "______________________________________________________"
radio = Radio.new
puts radio.status

puts "VolumeUp"
radio.volume = 30
puts radio.status

puts "VolumeDown"
radio.volume = 1
puts radio.status

puts "Creando FM frecuencia"
fm = Radio.fm
puts fm.status

puts "Creando AM frecuencia"
am = Radio.am
puts am.status

puts "Cambiando volumen a 27"
fm.volume = 27
puts fm.status
puts "_____________________________________________________________"
puts 
puts "El radio tiene un volumen de 27 y está en la frecuencia FM"
puts "_____________________________________________________________"