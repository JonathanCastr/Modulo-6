class Radio
    
    def initialize(volumen, frecuencia)
        @volumen = volumen
        @frecuencia = frecuencia
    end

    def subirvolumen()
        puts @volumen + "1..30"
    end

    def cambiarfrecuencia
        puts @frecuencia + "AM || FM"
    end

    
end