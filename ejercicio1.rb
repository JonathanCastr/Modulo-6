puts "Hola, ingresa la edad de tu hijo:"
edad = gets.chomp.to_i
if (edad<=3)
    mensaje = "No debe tener contacto algun con tecnología"
elsif (edad<6)
    mensaje = "Debe ser restringido a una hora por día"
elsif (edad<18)
    mensaje = "Debe ser restringido a dos horas por día"
else 
    mensaje = "Es un adulto, no requiere restricciones"
end
puts "Hola te Recomendados esto para tu hijo --> #{mensaje}"