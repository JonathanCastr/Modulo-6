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
    puts '1. Generar un arreglo de un producto'
    puts '2. Generar un arreglo de precios'
    puts '3. Generar un arreglo de precios con impuestos'
    puts '4. Ordenar un arreglo'
    puts '5. Buscar un producto en un arreglo'
    puts '6. Imprimir un arreglo ordenado'
    puts '7. Leer archivos de txt'
    puts '8. Agregar un registro de txt'
    puts '9. Buscar un precio'
    puts '0. Salir'
    puts
    puts 'Qué acción quieres realizar:'
    print '> '
    opcion = gets.chomp.to_i
    return opcion
end

def menu01
    # '1. Generar un arreglo de un producto'
    puts 'Cuantos productos quiere ingresar?'
    numProductos = gets.chomp.to_i
    producto = []

    numProductos.times do
        puts 'Ingrese nombre del producto:'
        pp = gets.chomp
        producto.push(pp)
    end

    print producto
    puts
    puts 'Pulse <ENTER> para continuar'
    gets.chomp
    return producto
end

def menu02(arreglo)
    # '2. Generar un arreglo de precios'
    precios = []
    for i in arreglo do
        puts "Cuál es el precio de #{i}?:"
        valor = gets.chomp.to_i
        precios.push(valor)
    end
    print arreglo
    puts
    print precios
    puts
    puts 'Pulse <ENTER> para continuar'
    gets.chomp
    return precios
end

def menu03(precio)
    # '3. Generar un arreglo de precios con impuestos'
    preciosIVA = precio.map { |n| n*1.19}
    print precio
    puts
    print preciosIVA
    puts
    puts 'Pulse para continuar'
    gets.chomp
    return preciosIVA
end

def menu04(arreglo)
    # '4. Ordenar un arreglo'
    arregloSort = arreglo.sort
    return arregloSort
end

def menu05(arreglo)
    # '5. Buscar un producto en un arreglo'
    puts "Qué producto quiere buscar?"
    busqueda = gets.chomp
    ok = 0 # significa que no se encuentra ningún producto
    arreglo.each do |line|
       if line.upcase.include?(busqueda.upcase)
            print 'Producto encontrado: '
            puts line
            ok += 1 # cambia porque se encontró un producto
       end
    end
    if ok == 0
        puts "No se encontró un producto similar"
    else
        puts "Se encontraron #{ok} productos similares"
    end
    puts 'Pulse <ENTER> para continuar'
    gets.chomp
end 

def menu06(arreglo)
    # '6. Imprimir un arreglo ordenado'
    arregloSort = arreglo.sort
    print arregloSort
    puts
    puts 'Pulse <ENTER> para continuar'
    gets.chomp
    # return arregloSort
    
end

def menu07
    # '7. Leer archivos de txt'
    content = File.read("catalogo_productos.txt") # lee el archivo
    lines = content.split("\n") # divide el contenido en líneas
    # print content
    # puts
    print lines
    puts
    puts 'Pulse <ENTER> para continuar'
    gets.chomp
    return lines
end

def menu08 ()
    # '8. Agregar un registro de txt'

    content = File.read("catalogo_productos.txt") # lee el archivo
    lines = content.split("\n") # divide el contenido en líneas

    puts "Qué producto quiere agregar a la lista?"
    producto = gets.chomp
    # lines.push(producto)

    # File.open("catalogo_productos.txt", "w") do # w de write (abre el archivo y borra todo su contenido)
    File.write("catalogo_productos.txt", producto+"\n", mode: "a") # a de append (abre el archivo y queda a la espera de agregar más información)
end

def menu09 ()
    # '9. Buscar un precio'
    require 'csv'
    content = CSV.read("precios_productos.csv") # lee el archivo
    # print content

    puts "Indique el precio de referencia:"
    precio = gets.chomp.to_i
    puts "Indique la condicion:"
    puts "1. Mayor o igual que #{precio}"
    puts "2. Menor o igual que #{precio}"
    condicion = gets.chomp.to_i

    if (condicion == 1) || (condicion == 2)
        puts "Opcion aceptada"
        content.each do |x|
            if condicion == 1 # si la condicion es 'mayor o igual'
                if x[0].to_i >= precio # si el precio del producto es mayor al valor dado
                    puts "PRODUCTO: #{x[1]} - PRECIO = #{x[0]}"
                end
            else # la condicion es 'menor o igual'
                if x[0].to_i <= precio # si el precio del producto es mayor al valor dado
                    puts "PRODUCTO: #{x[1]} - PRECIO = #{x[0]}"
                end
            end
        end
    else
        puts "Opcion no aceptada"
    end
    puts 'Pulse <ENTER> para continuar'
    gets.chomp
end

def menu00
    # '0. Salir'
    puts 'Saliendo del programa...'
end


# Empieza el programa principal

lista_de_productos = []
precios = []
preciosConIVA = []

menu = 10
loop do
  break if menu == 0
  menu = mostrarMenu()
  if menu == 1
    lista_de_productos = menu01()
  elsif menu == 2
    precios = menu02(lista_de_productos)
  elsif menu == 3
    preciosConIVA = menu03(precios)
  elsif menu == 4
    arregloOrdenado = menu04(preciosConIVA)
  elsif menu == 5
    menu05(lista_de_productos)
  elsif menu == 6
    menu06(preciosConIVA)
  elsif menu == 7
    lista_de_productos = menu07()
  elsif menu == 8
    menu08()
  elsif menu == 9
    menu09()
  elsif menu == 0
    menu00()
  else
    puts 'Opción no aceptada'
  end 
end

puts "Gracias por participar..."
