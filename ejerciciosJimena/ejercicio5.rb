#Convierte número decimal a romano

    puts 'Escribe un numero del 1 al 10:'
    romans = {
        'I'=>1,
        'II'=>2,
        'III'=>3,
        'IV'=>4,
        'V'=>5,
        'VI'=>6,
        'VII'=>7,
        'VIII'=>8,
        'IX'=>9,
        'X'=>10
    }
    puts "Escriba un número decimal o romano del 1 al 10:"
       numbers = gets.chomp
      if numbers.to_i != numbers.to_s && romans.has_key?(numbers.upcase)
        puts "El número romano en decimal es: #{romans[numbers.upcase]}"
      elsif numbers.to_i > 0 && numbers.to_i <=10
        decimal =romans.invert
        puts "El número decimal en numeración romana es: #{decimal[numbers.to_i]}"
      else
        puts romans.default = "No encotrado" 
      end
    
          