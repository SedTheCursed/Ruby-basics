def throwDice(stair, solo_game = true)

	dice = rand(1..6)

	puts "Le dé affiche : #{dice}" if solo_game
	
	if dice >= 5
		stair += 1 
		puts "Tu gravis une marche, bravo !" if solo_game
		
	
	elsif dice == 1
		if stair != 0
			stair -= 1
			puts "Tu descends d'une marche." if solo_game
		else
			puts "Tu es dejà au rez-de-chaussée" if solo_game
		end

	else 
		puts "Tu reste sur la même marche." if solo_game
		
	end
	
	puts "Maintenant tu es à la marche n°#{stair}" if solo_game
	puts " " if solo_game

	return stair
end

def gameMode
	mode = 0

	while mode <1 || mode> 3
		puts "Choisissez votre mode de jeu"
		puts "  1 : Manuel"
		puts "  2 : Automatique"
		puts "  3 : Generation de statistiques"
		print "> "
		mode = gets.chomp.to_i
	end

	return mode
end

def game(mode)
	stair = 0
	turn = 0

	while stair < 10
		if mode == 3
			stair = throwDice(stair, false)
		else
			stair = throwDice(stair)
		end

		turn += 1

		if mode == 1
			puts "Relance le dé"
			gets	
		end
	end

	unless mode == 3
		puts " "
		puts "Et voilà ! Tu est arrivé en haut de l'escalier !!! Enjoy the view."
		puts "Ca t'as pris #{turn} lancés de dé."
	end

	return turn
end


def average_finish_time
	sum = 0
	nb_of_games = 0

	puts ""
	puts "Simulation de parties"

	rand(100..255).times do
		sum += game(3)
		nb_of_games += 1
	end
	
	puts "Le nombre de tours moyens pour atteindre le haut des marches est : #{sum / nb_of_games}"

end

def process
	mode = gameMode

	if mode == 3
		average_finish_time
	else
		game(mode)
	end

	puts "Veux-tu refaire une partie ? (Oui/Non)"
	print "> "
	replay = gets.chomp

	if replay == "Oui"
		process
	end
end

process