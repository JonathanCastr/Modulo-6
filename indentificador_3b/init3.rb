$suma_total = 0

def clave (numero, categoria)
    key = "#{numero}" + categoria[0..2].upcase + '3BS'
    return key
end

def iva (valor)
    precio_final = valor*1.19
    return precio_final.round(2)
end

def sumaTotal(precio)
    $suma_total += precio
end

def escribeProducto (num, nombre, categ, precio)
    puts 'Los datos del producto son:'
    claveProducto = clave(num,categ)
    puts "Clave #{claveProducto} nombre: #{nombre}"
    precioF = iva(precio)
    puts "Precio final: #{precioF}"
    puts
    sumaTotal(precioF)
end

puts '--------------------------------------------------'
puts '|  Bienvenido al Identificador de precios 3b\'s  |'
puts '--------------------------------------------------'
puts

escribeProducto(1, "Aceite", "abarrotes", 10000)
escribeProducto(2, "Pasta", "limpieza", 4000)
escribeProducto(3, "Cereal", "comida", 6000)

puts "La suma de los precios es: #{$suma_total}"
