class Tuner  #Permitir rango de frecuencias en dos bandas disponibles
    @@bands = ['FM', 'AM']
    @@bands_range = {
      FM: 88.0..108.0,
      AM: 540.0..1600.0
    }
  
    attr_reader :freq, :band, :last_fm_freq, :last_am_freq
  
    def initialize(options={}) #Valores por defecto para banda y frecuencia
      @band = options[:band] || @@bands[rand()]
      @freq = options[:freq] || random_freq
    end
  
    def freq=(value) # Actualiza frecuencia solo si está dentro del rango de banda.
      return if !band_range.cover?(value)
      store_freq
      @freq = value
    end
  
    def switch_band # Cambia tipo de banda
      store_freq # Almacena úlitma frecuencia usada antes de cambiar de banda.
      @band = @band != 'FM' ? 'FM' : 'AM' # Cambia bandas.
      @freq = last_band_freq # Asigna última fercuencia usada por nueva banda.
      @band # Retorna actual banda.
    end
  
    private

      def band_range  # Retorna rango de banda basánddoes en banda de radio.
        case @band
        when 'FM'
          @@bands_range[:FM]
        when 'AM'
          @@bands_range[:AM]
        end
      end
  
      def random_freq # Uso cuando por defecto es requerido.
        case @band
        when 'FM'
          rand(@@bands_range[:FM]).truncate()
        when 'AM'
          rand(@@bands_range[:AM]).truncate()
        end
      end
  
      def last_band_freq # Retorna última frecuencia usada según banda.
        case @band
        when 'FM'
          @last_fm_freq || random_freq
        when 'AM'
          @last_am_freq || random_freq
        end
      end
  
      def store_freq # Guarda última frecuencia usada. Se utiliza para restaurar esta al cambiar banda. 
        case @band
        when 'FM'
          @last_fm_freq = band_range.cover?(@freq) ? @freq : nil
        when 'AM'
          @last_am_freq = band_range.cover?(@freq) ? @freq : nil
        end
      end
  end