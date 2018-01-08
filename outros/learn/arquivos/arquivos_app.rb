path = './arqs/tips.txt'

# Lendo linha por linha de um arquivo.
begin
  arq = File.open(path, 'r')
  key = 0
  puts "**** Lendo linha por linha do arquivo ****\n"
  arq.each() do |line|
    puts "Linha #{key}: #{line}"
    key += 1
  end
rescue
  puts "Não foi possível abrir o arquivo!"
  exit
end

# Lendo um arquivo inteiro.
begin
  arq.close()
  arq = File.open(path, 'r')
  puts "\n**** Lendo arquivo inteiro ****\n\n #{arq.read()}"
  arq.close()
rescue
  puts "Não foi possível abrir o arquivo!"
  exit
end

# Escrever num arquivo 100 primeiros pares.
begin
  arq = File.open('./arqs/numeros.txt', 'w')
  0..100.times do |cont|
    valor = cont % 2 == 0 ? cont : -1
    next if valor == -1
    valor = valor.to_s() + "\n"
    arq.write(valor)
  end
  arq.close()
rescue => exception
  puts "Erro: #{exception.message}"
end
