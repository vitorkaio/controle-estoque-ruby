# Códigos para demonstração de entrada e saída de dados no ruby.

# Entrada de dados com gets.
print "Nome: "
nome = gets()
puts "Meu nome é #{nome}" # A diferença entre o print e o puts é que o puts da uma quebra de linha.

# Entrada e conversão de string para inteiro.
print "Idade: "
idade = gets()
age = idade.to_i()
puts "#{age}"

# tenário
valor = 1==1 ? 1 : 0 # 1

# IF ESLE

=begin
x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   puts "I can't guess the number"
end
=end
