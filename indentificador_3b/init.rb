puts '--------------------------------------------------'
puts '|  Bienvenido al Identificador de precios 3b\'s  |'
puts '--------------------------------------------------'
puts
puts '--- Ingresa la siguiente información del producto ---'

puts 'Cuantos productos deseas dar de alta:'
veces = gets.chomp.to_i
dls = 0
clp = 0
veces.times do 

    puts 'Ingresa la clave'
    clave = gets.chomp

    puts 'Ingresa nombre'
    nombre = gets.chomp

    puts 'Ingresa marca'
    marca = gets.chomp

    puts 'Ingresa Unidad'
    unidad = gets.chomp

    puts 'Ingresa Precio'
    precio = gets.chomp.to_i

    moneda = 'CLP'

    if ( precio<1000 )
        puts 'Precio es en dolares? (S/N)'
        respuesta = gets.chomp
        if (respuesta == 'S') || (respuesta == 's')
            moneda = 'USD'
        end
    end
    puts 'Ingresa Categoria'
    categoria = gets.chomp 

    puts 'La información del producto capturada es:'
    puts
    puts "clave:#{clave}"
    puts "nombre:#{nombre}"
    puts "nombre:#{marca}"
    puts "unidad:#{unidad}"
    puts "precios: $ #{precio} #{moneda}"
    puts "categoria:#{categoria}"
    puts
    if (moneda == 'USD')
        dls += precio
    else 
        clp += precio
    end
end
puts "-------------------La suma de los precios capturados en USD es: #{dls}-----------------"
puts
puts "-------------------La suma de los precios capturados en CLP es: #{clp}-----------------"

