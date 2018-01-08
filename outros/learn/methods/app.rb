require "./funcoes"
require "./outros/auxiliar"

puts aux()
lis = [10, 20, 1, 30, 5, 0, 3]

menor = menorValor(lis)
puts "O menor número da lista é: #{menor}"

maior = maiorValor(lis)
puts "O maior número da lista é: #{maior}"