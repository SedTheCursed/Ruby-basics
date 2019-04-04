def throwDice(stair)

	dice = rand(1..6)

	puts "Le dé affice : #{dice}"
	
	if dice >= 5
		stair += 1 
		puts "Tu gravis une marche, bravo !"
		
	
	elsif dice == 1
		if stair != 0
			stair -= 1
			puts "Tu descends d'une marche."
		else
			"Tu es dejà au rez-de-chaussée"
		end

	else 
		puts "Tu reste sur la même marche."
		
	end
	puts "Maintenant tu es à la marche n°#{stair}"
	puts " "

	return stair
end



def game(manual = true)
	stair = 0
	turn = 0

	if manual
		while stair < 10
			stair = throwDice(stair)
			turn += 1
			puts "Relance le dé"
			gets
		end
	else
		while stair < 10
			stair = throwDice(stair)
			turn += 1
		end
	end
	puts " "
	puts "Et voilà ! Tu est arrivé en haut de l'escalier !!! Enjoy the view."
	puts "Ca t'as pris #{turn} lancés de dé."

	return turn
end



def average_finish_time
	sum = 0
	nb_of_games = 0

	rand(100..255).times do
		sum += game(false)
		nb_of_games += 1
	end
	
	puts " "
	puts "Le nombre de tours moyens pour atteindre le haut des marches est : #{sum / nb_of_games}"

end

game
average_finish_time