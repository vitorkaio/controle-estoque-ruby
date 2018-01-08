class Celular

  # Classe que abstrai um celular.
  # @ indica que o atributo é privado.

  def initialize(marca, modelo, preco, lote, block)
    @marca = marca
    @modelo = modelo
    @preco = preco
    @lote = lote
    @bloqueado = block
  end

  def setMarca(marca)
    @marca = marca
  end

  def getMarca()
    return @marca
  end

  def setModelo(modelo)
    @modelo = modelo
  end

  def getModelo()
    return @modelo
  end

  def setPreco(preco)
    @preco = preco
  end

  def getPreco()
    return @preco
  end

  def setLote(lote)
    @lote = lote
  end

  def getLote()
    return @lote
  end

  def setBlock(block)
    @bloqueado = block
  end

  def getBlock()
    return @block
  end

  def toString()
    puts "Marca: #{@marca}\nModelo: #{@modelo}\nPreço: R$ #{@preco}\nLote: #{@lote}\nBloqueado: #{@bloqueado}"
  end
  
end # Fim da classe