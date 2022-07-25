# Clase Padre
class Radio
  # atributos
  attr_reader :volume, :tuner, :band

  def initialize(options={}) #Establece valores predeterminados para cada instancia de radio.
    @volume = options[:volume] || rand(1..30)
    @tuner = options[:tuner] || Tuner.new
    @band = @tuner.band
  end

  def volume=(value)#Volumen con atributo personalizado. Solo acepta un rango de valores.
    return if value < 1 || value > 30
    @volume = value
  end

  def status # Retorna el estado radio a string.
    measure_unit = @band == "FM" ? "MHz" : "kHz" 
    "Station: #{@tuner.freq}#{measure_unit} #{@band}, volume #{@volume}"
  end

  def self.fm # FM o AM tuner.
    Radio.new({
      tuner: Tuner.new({band: "FM"})
    })
  end

  def self.am
    Radio.new({
      tuner: Tuner.new({band: "AM"})
    })
  end
end