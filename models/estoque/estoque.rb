# Modela um estoque para o tipo celular
class Estoque

  def initialize()
    @celulares = []
  end

  # Adiciona um celular no banco.
  def insereCelular(celular)
    @celulares.push(celular)
  end

  # Remove um celular do estoque.
  def removeCelular(modelo)
    pos = getPosicao(modelo)
    if pos != -1
      @celulares.delete_at(pos)
      return true
    end
    return false
  end

  # Retorna a posição do celular no estoque, -1 caso contrário.
  def getPosicao(modelo)
    @celulares.length.times do |contador|
      if @celulares[contador].getModelo().eql?(modelo) == true
        return contador
      end
    end
    return -1
  end

  # Retorna uma lista com o nome dos modelos de celulares no estoque.
  def getAllModelos()
    modelos = []
    for model in @celulares
      modelos.push(model.getModelo())
    end
    return modelos
  end

  def toString()
    for cel in @celulares
      puts cel.toString()
    end
    puts "Celulares: #{quantidade()}"
  end

  def quantidade()
    return @celulares.length()
  end

end #Fim da classe