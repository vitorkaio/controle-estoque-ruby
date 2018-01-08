# Classe que abstrai a entrada/saída de dados e comandos do SO.
class Prompt

  # Self indica que o método é estático.

  # Imprime uma msg no console.
  def self.output(msg)
    puts msg
  end

  # Limpa o console.
  def self.limpa()
    system("cls")
  end

  # Pausa o console.
  def self.pausa()
    system("pause")
  end

  # Entra com dados.
  def self.input(tipo, msg, vazio)
    entrada = ""
    enter = ""
    begin
      print msg
      enter = gets()
      case tipo
      when 1
        entrada = enter.delete("\n")
      when 2
        entrada = enter.to_i()
        # redo volta o loop mais interno
        redo if entrada == 0
      when 3
        entrada = enter.to_f()
        redo if entrada == 0.0
      end
    end while vazio == false and enter.length == 1
    return entrada
  end
end # Fim da classe