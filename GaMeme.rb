#Gameme-1.0
#DdRoot
puts '====================================================================================================='
puts "Este é o jogo de perguntas e respostas dos Memes"
puts "cada pergunta vale 10 pontos"
puts '====================================================================================================='
puts "este jogo precisa do pacote 'mpg123'instalado, caso não tenha utilize 'apt-get install mpg123'"
puts "voce tem este pacote instalado (sim/nao) ?"
puts '-----------------------------------------------------------------------------------------------------'
init = gets.chomp
puts '====================================================================================================='
cert1= 4
$cert2= 'quadrada'
$cert3= 'Sensei'


def pergunta1
	puts "Quanto é 2+2 ?"
	respo1=gets.chomp.to_i
	if respo1 == 4
		fork {exec "mpg123 -q acertou-mizeravijk.mp3"}
	else
		fork {exec "mpg123 -q voceeburro.mp3"}
		
	end
end

def pergunta2
	puts "Qual o formato da bola quadrada do kiko?"
	respo2=gets
	case respo2.equal? $cert2
		when false
		fork {exec "mpg123 -q acertou-mizeravijk.mp3"}
	else
		fork {exec "mpg123 -q voceeburro.mp3"}
	end
end

def pergunta3
	puts "Qual o sobrenome do mestre do Naruto, Kakashi 'Sensei'?"
        respo2=gets
        case respo2.equal? $cert3
                when false
                fork {exec "mpg123 -q ceeobichao.mp3"}
        else
                fork {exec "mpg123 -q voceeburro.mp3"}
        end
end

if init== "nao"
	puts "por favor instale o pacote antes de continuar"
	abort
else
	pergunta1
	puts '====================================================================================================='
	sleep(1)	
	pergunta2
	puts '====================================================================================================='
	sleep(1)
	pergunta3
	puts '====================================================================================================='
	puts "Parabéns você chegou ao final!"
	puts '====================================================================================================='
	abort
end
