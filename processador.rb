class Processador
  attr_accessor :indice, :modelo

  def initialize(indice, modelo)
    @indice = indice
    @modelo = modelo
  end

  def apresentar()
    "#{@indice} Nome: #{modelo}"

  end
end

class Intel5 < Processador
  def initialize
    super("1)", "Core i5")
  end
end

class Intel7 < Processador
  def initialize
    super("2)", "Core i7")
  end
end

class Amd5 < Processador
  def initialize
    super("3)", "Ryzen 5")
  end
end

class Amd7 < Processador
  def initialize
    super("4)", "Ryzen 7")
  end
end
