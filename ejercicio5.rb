numero = {"I"=>1,"II"=>2,"III"=>3,"IV"=>4,"V"=>5,"VI"=>6,"VII"=>7,"VIII"=>8,"IX"=>9,"X"=>10}
puts "Ingrese un numero del 1 al 10 para pasarlo a romano o del I al X para pasarlo a decimal"
valor  = gets.chomp
if valor.to_i != valor.to_s && numero.has_key?(valor.upcase)
    puts "Su numero romano en decimal es #{numero[valor.upcase]}"
elsif valor.to_i > 0 && valor.to_i <= 5
    nueva_variable = numero.invert
    puts "Su numero decimal en romano es #{nueva_variable[valor.to_i]}"