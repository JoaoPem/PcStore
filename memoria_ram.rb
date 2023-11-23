class MemoriaRam
  attr_accessor :produto, :tamanho

  def initialize(produto, tamanho)
    @produto = produto
    @tamanho = tamanho
  end

  def apresentar
    "Produto: #{@produto} | Tamanhos Disponíveis: #{tamanho.join(', ')}"
  end
end

class Memoria4 < MemoriaRam
  def initialize
    super("Kingston Hiper X",4)
  end
end

class Memoria8 <  MemoriaRam
  def initialize
    super("Kingston Hiper X",8)
    end
end

class Memoria16 < MemoriaRam
  def initialize
    super("Kingston Hiper X",16)
  end
end

class Memoria32 < MemoriaRam
  def initialize
    super("Kingston Hiper X",32)
  end
end

class Memoria64 < MemoriaRam
  def initialize
    super("Kingston Hiper X",64)
  end
end
