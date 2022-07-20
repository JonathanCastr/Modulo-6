numero =
{
    'i' =>1,
    'ii'=>2,
    'iii'=>3,
    'iv'=>4,
    'v'=>5,
    'vi'=>6,
    'vii'=>7,
    'viii'=>8,
    'ix'=>9,
    'x'=>10,
}
#numero.each do |llave,valor| puts "#{valor}"
#end 
        print "escribe un numero del 1 al 10 en decimal o romano"
        puts
        respuesta = gets.chomp
        if respuesta.to_i != respuesta.to_s && numero.has_key?(respuesta.downcase) #como en tu caso es en minusculas .downcase es el modulo
            puts "el numero romano en decimal seria #{numero [respuesta.downcase]}" # mismo aqui
        elsif respuesta.to_i > 0 && respuesta.to_i <=10
            decimal = numero.invert
            puts "el numero decimal en numero romano seria #{decimal [respuesta.to_i]}"
        else
 #           puts numero.default = "no encontrado" #no es necesario poner el numero.default ahora si lo quieres poner debe ser asi
            puts "#{numero.default}: No encontrado"
        end
            
    

   


        
        

    



