class PlacaMae
  attr_accessor :indice, :nome, :processador, :slot_ram, :cap_ram, :video

  def initialize(indice, nome, processador, slot_ram, cap_ram, video)
    @indice = indice
    @nome = nome
    @processador = processador
    @slot_ram = slot_ram
    @cap_ram = cap_ram
    @video = video
  end

  def apresentar()
    "#{@indice} Nome: #{@nome} | Processador: #{@processador} | Slot Ram: #{@slot_ram} | Cap. Ram: #{@cap_ram} | Vídeo Integrado: #{@video}"
  end
end

class Asus < PlacaMae
  def initialize
    super("1)","Asus", "Intel", "2", "16GB", "Não")
  end
end

class Aorus < PlacaMae
  def initialize
    super("2)","Gigabyte", "AMD", "2", "16GB", "Não")
  end
end

class AsRock < PlacaMae
  def initialize
    super("3)","ASRock", "Intel e AMD", "4", "64GB", "Sim")
  end
end