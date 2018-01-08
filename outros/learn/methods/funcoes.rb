# Define duas funções.

def menorValor(lista)
  menor = lista[0]
  for cont in lista
    menor = cont if cont < menor
  end
  return menor
end

def maiorValor(lista)
  maior = lista[0]
  for cont in lista
    maior = cont if cont > maior
  end
  return maior
end