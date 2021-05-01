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


class Jogo
	def pergunta1
		c=4
		puts "Quanto é 2+2 ?"
		r=gets.chomp.to_i
		if r == c
			fork {exec "mpg123 -q acertou-mizeravijk.mp3"}
		else
			fork {exec "mpg123 -q voceeburro.mp3"}
		
		end
	end

	def pergunta2
		c= "quadrada"
		puts "Qual o formato da bola quadrada do kiko?"
		r= gets.chomp
		if r == c
			fork {exec "mpg123 -q acertou-mizeravijk.mp3"}
		else
			fork {exec "mpg123 -q voceeburro.mp3"}
		end
	end

	def pergunta3
		c= "Sensei"
		puts "Qual o sobrenome do mestre do Naruto, Kakashi 'Sensei'?"
        	r= gets.chomp
        	if r == c
		 	fork {exec "mpg123 -q ceeobichao.mp3"}
        	else
                	fork {exec "mpg123 -q voceeburro.mp3"}
        	end
	end
end

if init== "nao"
	puts "por favor instale o pacote antes de continuar"
	abort
else
	game = Jogo.new
	game.pergunta1
	puts '====================================================================================================='
	sleep(1)	
	game.pergunta2
	puts '====================================================================================================='
	sleep(1)
	game.pergunta3
	puts '====================================================================================================='
	fork {exec  "figlet Parabens voce chegou ao final!"}
	puts '====================================================================================================='
	abort
end
