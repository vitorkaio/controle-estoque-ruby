require 'json'

musica = {"nome"=> "Polaroid", "banda"=> "Imagine Dragons", "ano"=> 2017}
filme =  {titulo: "Interstellar", diretor: "Nolan", ano: 2015}

puts musica["banda"]
puts filme[:ano]

# Gerar json a partir do hash
puts JSON.generate(musica)

saida = filme.to_json()
puts saida

# carregar um json para hash
ent = JSON.load(saida)
puts ent["diretor"]
puts ent.class

# Salvando um json no arquivo.
begin
  arq = File.open('./arqs/musica.json', 'w')
  arq.write(saida)
  arq.close()
rescue => exception
  puts exception.message
end

# Testando Gemfile
#require 'columnize'
#a = (1..10).to_a
#puts a
#puts a.columnize