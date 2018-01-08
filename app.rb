require "./models/celular/celular"
require "./models/estoque/estoque"
require "./models/auxiliar/prompt"

require "./constantes/const"

$estoque = Estoque.new()

# ************************** Fluxo $estoque **************************

# Classe que modela a entrada de dados.
class Operacoes
  # Operação para adicionar um celular.
  def self.adicionaCelular()
    marca = Prompt.input(1, Const::MARCA, false)
    modelo = Prompt.input(1, Const::MODELO, false)
    preco = Prompt.input(3, Const::PRECO, false)
    lote = Prompt.input(1, Const::LOTE, false)

    cel = Celular.new(marca, modelo, preco, lote, false)
    return cel
  end

  # Remove um celular do $estoque.
  def self.removeCelular()
    modelos = $estoque.getAllModelos()
    modelos.length().times do |contador|
      Prompt.output("#{contador + 1} - #{modelos[contador]}")
    end
    msg = "#{modelos.length() + 1} - Para cancelar\nOp: "
    op = Prompt.input(2, msg, false)
    return op == modelos.length() + 1 ? false : modelos[op - 1]
  end

end

# ************************** MAIN **************************

loop do

  Prompt.output(Const::ESTOQUE)

  print "1.Adicionar\n2.Remover\n3.Alterar\n4.Listar\n5.Sair\nOp: "
  menu = gets.to_i()

  break if menu == 5

  case menu
  when 1  
    Prompt.limpa()
    cel = Operacoes.adicionaCelular()
    $estoque.insereCelular(cel)
    Prompt.output("Celular adicionado!")
    Prompt.pausa()
  when 2
    Prompt.limpa()
    Prompt.output(Const::REMOVER)
    modelo = Operacoes.removeCelular()
    puts "Modelo a ser removido: #{modelo}"
    next if modelo == false
    if $estoque.removeCelular(modelo) == true
      Prompt.output("Celular removido!")
    else
      Prompt.output("Não foi possível remover o celular!")
    end
    Prompt.pausa()
  when 3
    Prompt.limpa()
    Prompt.output(Const::ALTERAR)
    Prompt.pausa()
  when 4
    Prompt.limpa()
    Prompt.output(Const::LISTAR)
    $estoque.toString()
    Prompt.pausa()
  else
    Prompt.limpa()
    Prompt.output(Const::OPINVALIDA)
    Prompt.pausa()
  end

  Prompt.limpa()

end

Prompt.limpa()