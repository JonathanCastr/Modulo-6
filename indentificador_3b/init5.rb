# Integrantes:
# Yolanda Araya
# Jimena Aliaga
# Rolando Piñones
# Jonathan Castro
# Alejandro Cofré

def mostrarMenu
    puts
    puts '--------------------------------------------------'
    puts '|  Bienvenido al Identificador de precios 3b\'s  |'
    puts '--------------------------------------------------'
    puts
    puts
    puts '-------- Catálogo de Productos -------------------'
    puts
    puts
    puts 'Qué acción quieres realizar:'
    puts
    puts '1. Ingresar productos manualmente'
    puts '2. Consultar producto por clave'
    puts '3. Leer archivo y crear hash'
    puts '0. Salir'
    puts
    puts 'Qué acción quieres realizar:'
    print '> '
    opcion = gets.chomp.to_i
    return opcion
end


def menu01()
    puts "¿Cuantos productos desea ingresar?"
    veces = gets.chomp.to_i
    veces.times do 

        puts 'Ingresa la clave'
        clave = gets.chomp
        puts 'Ingresa nombre'
        nombre = gets.chomp
        puts 'Ingresa Unidad'
        unidad = gets.chomp
        puts 'Ingresa Precio'
        precio = gets.chomp.to_i
        puts 'Ingresa Categoría'
        categoria = gets.chomp

        producto_hash = {
            "clave" => clave,
            "nombre" => nombre,
            "unidad" => unidad,
            "precio" => precio,
            "categoria" => categoria
        }
        $lista_productos.push(producto_hash) 
    end
    print $lista_productos
    puts "Presione <ENTER> para continuar"
    gets.chomp
end

def menu02()
    puts 'Ingrese la clave del producto'
    busqueda = gets.chomp
    for p in $lista_productos do
        if busqueda == p["clave"]
            puts p
        end
    puts "Presione <ENTER> para continuar"
    gets.chomp
    end
end

def menu03()
    require 'csv'
    content = CSV.read("catalogo_producto_hash.txt") # lee el archivo
    for a in content do
        producto_hash = {
            "clave" => clave(a[0],a[4]),
            "nombre" => a[1],
            "unidad" => a[2],
            "precio" => a[3],
            "categoria" => a[4]
        }
        $lista2_productos.push(producto_hash) 
    end
    print $lista2_productos
end

def menu00
    # '0. Salir'
    puts 'Saliendo del programa...'
end

def clave (numero, categoria)
    key = "#{numero}" + categoria[0..2].upcase + '3BS'
    return key
end

menu = 10
$lista_productos = []
$lista2_productos = []
loop do
  break if menu == 0
  menu = mostrarMenu()
  if menu == 1
    ingresa_producto = menu01()
  elsif menu == 2
    consulta_clave = menu02()
  elsif menu == 3
    preciosConIVA = menu03()
  elsif menu == 0
    menu00()
  else
    puts 'Opción no aceptada'
  end 
end

puts "Gracias por participar..."
