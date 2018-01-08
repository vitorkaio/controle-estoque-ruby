# Array com 10 primeiros números.
lista = Array(0..10)

puts "***** For ****"

for cont in lista
  puts "Número: #{cont}"
end

# Entrar com dados em uma array.
=begin
l = Array.new()
for cont in 0..3
  print "Entre com uma string: "
  l.push(gets())
end

for cont in l
  puts "Dado: #{cont}"
end
=end

puts "***** While ****"
# loop com while.
i = 0
while i < 3
  puts i
  i += 1
end

puts "***** Do while ****"
# Do while
x = 0
begin
  puts x
  x += 1
end while x < 3

puts "***** Each ****"
lis = [10, 20, 1, 30, 5, 0, 3]
lis.each do |valor|
  puts valor
end

puts "***** Times ****"
5.times do |cont|
  puts cont
end

puts "***** loop Infinito ****"
cont = 0
loop do
  puts cont
  cont += 1
  break if cont == 20
end

puts "***** Array push sugar ****"
lis << 13
puts lis

# next -> Próxima interação do loop.
# redo -> Volta o loop mais interno.
# break -> Sai do loop.
