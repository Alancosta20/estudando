#gera um numero aleatorio
numeroSecreto = rand(1..50)

#define um numero máximo de tentativas
tentativasMaximas = 5
tentativas = 0

puts "eu escolhi um numero entre 1 e 50. Tente adivinhar qual é!"

#loop principal do jogo
while tentativas < tentativasMaximas
  print "Digite seu palpite:  "
  palpite = gets.to_i

  if palpite < numeroSecreto
    puts "O numero secreto é maior que #{palpite}"
  elsif palpite > numeroSecreto
    puts "O numero secreto é menor que #{palpite}"
  else 
    puts "parabens! parabens você acertou o numero! Agora deve um beijo ao Alan"
    break
  end

  tentativas += 1
  puts "você ainda tem #{tentativasMaximas - tentativas} tentativas restantes."
end

if tentativas == tentativasMaximas
    puts "você perdeu! o numero secreto era #{numeroSecreto}"
end