class Radio 
    attr_accessor :volumen, :frecuencia

    def initialize
        @volumen = 1
        @frecuencia = "FM"
    end

    def fijarVolumen (nuevoVolumen)
      @volumen = nuevoVolumen

    end

    def cambiarVolumen (masvolumen)
      if masvolumen == "+"
        @volumen += 1

      elsif masvolumen == "-"
        @volumen -= 1

      else 
        puts "el argumento no es valido"

      end

      if @volumen >30
        @volumen = 30

      end

      if @volumen <1
        @volumen = 1 
      end
        
    end

    def cambiarFrecuencia (otrafrecuencia)
        if otrafrecuencia == "FM"
            @frecuencia = "FM"

        elsif otrafrecuencia == "AM"
            @frecuencia = "AM"

        else
            puts "frecuencia no valida"

        end
        
    end
    
end

radio = Radio.new
puts  "El radio tiene un volumen de #{radio.volumen}  y esta en la frecuencia #{radio.frecuencia}"
radio.cambiarVolumen("+") 
radio.cambiarVolumen("+") 
radio.cambiarVolumen("+") 
radio.cambiarVolumen("+") 
puts  "El radio tiene un volumen de #{radio.volumen}  y esta en la frecuencia #{radio.frecuencia}"
radio.fijarVolumen (27)
puts  "El radio tiene un volumen de #{radio.volumen}  y esta en la frecuencia #{radio.frecuencia}"
radio.cambiarFrecuencia ("AM")
puts  "El radio tiene un volumen de #{radio.volumen}  y esta en la frecuencia #{radio.frecuencia}"