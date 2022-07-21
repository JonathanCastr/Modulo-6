class Radio
    
    def radio.volumen()
        "#{radio_volumen[“+”]} #{radio_volumen[“-”]}"
        gets volumen [1..30]
    end

    def radio.frecuencia()
        "#{radio_frecuencia[“AM”]} #{radio_frecuencia[“FM”]}"
        gets_frecuencia[]
        
    end
end