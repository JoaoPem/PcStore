class PlacaVideo
  attr_accessor :indice, :nome

  def initialize(indice, nome)
    @indice = indice
    @nome = nome
  end

  def apresentar()
    "#{@indice} Nome: #{@nome}"
  end
end

class Video_Geforce < PlacaVideo
  def initialize
    super("1)", "Evga Geforce RTX 2060 6GB")
  end
end

class Video_Asus < PlacaVideo
  def initialize
    super("2)", "Asus ROG Strix Geforce RTX 3060 6GB")
  end
end

class Video_GigaByte < PlacaVideo
  def initialize
    super("3)", "Gigabyte Radeon RX 6600 XT EAGLE 8GB")
  end
end
